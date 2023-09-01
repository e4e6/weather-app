import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test_2/data/model/api_model.dart';

import 'api_key.dart';

Future<GetMyCurrentLocationModel> getMyCurrentLocation() async {
  try {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return GetMyCurrentLocationModel(
        myLatitude: position.latitude, myLongitude: position.longitude);
  } catch (e) {
    throw new FormatException(); // <?> throw 가 하는일
  }
}

final dio = Dio();

Future<Map<String, dynamic>> getCurrentWeatherApiJson(
    {required double myLatitude, required double myLongitude}) async {
  Response response = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather?lat=$myLatitude&lon=$myLongitude&appid=$presentWeatherApiKey');
  if (response.statusCode == 200) {
    Map<String, dynamic> jsonData = response.data;
    return jsonData;
  } else {
    throw ('error: ${response.statusCode}');
  }
}

Future<Map<String, dynamic>> get5DaysWeatherApiJson(
    {required double myLatitude, required double myLongitude}) async {
  Response response = await dio.get(
      'https://api.openweathermap.org/data/2.5/forecast?lat=$myLatitude&lon=$myLongitude&appid=$presentWeatherApiKey');
  if (response.statusCode == 200) {
    Map<String, dynamic> jsonData = response.data;
    return jsonData;
  } else {
    throw ('error: ${response.statusCode}');
  }
}

Future<GetWeatherItemsModel> getWeatherItems() async{
  List<double> graphData=[];
  var mylocation = await getMyCurrentLocation();
  var myLatitude = mylocation.myLatitude;
  var myLongitude = mylocation.myLongitude;

  Map<String, dynamic> jsonData = await getCurrentWeatherApiJson(myLatitude: myLatitude, myLongitude: myLongitude);
  Map<String, dynamic> jsonDataForGraph = await get5DaysWeatherApiJson(myLatitude: myLatitude, myLongitude: myLongitude);

  for (int i = 0; i < 10; i++) {
    graphData.add(double.parse(
        (jsonDataForGraph['list'][i]['main']['temp'] - 273.15)
            .toStringAsFixed(1)));
    print(graphData);

    return GetWeatherItemsModel(
        shownLocation: jsonData['name'],
        weatherIcon: jsonData['weather'][0]['icon'],
        weatherWord: jsonData['weather'][0]['main'],
        shownWindSpeed: jsonData['wind']['speed'],
        shownTemperature: double.parse((jsonData['main']['temp'] - 273.15).toStringAsFixed(1)),
        shownHumidity: jsonData['main']['humidity'],
        graphData: graphData);
  }
  throw('error at getWeatherItems');
}