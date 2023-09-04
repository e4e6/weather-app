import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test_2/data/model/get_my_current_location_model.dart';
import 'package:test_2/data/model/get_weather_data_variables_model.dart';

import 'api_key.dart';

class Api {
  final dio = Dio();

  Future<GetMyCurrentLocationModel> getMyCurrentLocationData() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      return GetMyCurrentLocationModel(
          myLatitude: position.latitude, myLongitude: position.longitude);
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<Map<String, dynamic>> getCurrentWeatherData(
      {required double myLatitude, required double myLongitude}) async {
    Response response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=$myLatitude&lon=$myLongitude&appid=$presentWeatherApiKey');
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = response.data;
      return jsonData;
    }
    throw ('statusCode: ${response.statusCode}');
  }

  Future<Map<String, dynamic>> get5DaysWeatherData(
      {required double myLatitude, required double myLongitude}) async {
    Response response = await dio.get(
        'https://api.openweathermap.org/data/2.5/forecast?lat=$myLatitude&lon=$myLongitude&appid=$presentWeatherApiKey');
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = response.data;
      return jsonData;
    }
    throw ('statusCode: ${response.statusCode}');
  }
}
