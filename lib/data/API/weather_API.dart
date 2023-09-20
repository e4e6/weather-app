import 'package:dio/dio.dart';
import 'package:test_2/constant/constant.dart';

class WeatherAPI {
  final dio = Dio();
  final constant = Constant();

  Future<Map<String, dynamic>> getCurrentWeatherData(
      {required double myLatitude, required double myLongitude}) async {
    try{
        Response response = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=$myLatitude&lon=$myLongitude&appid=${Constant.presentWeatherApiKey}');
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = response.data;
        return jsonData;
      }throw ('statusCode: ${response.statusCode}');
    }catch(e){
      throw ('error at weather_API try-catch');
    }
  }
}
