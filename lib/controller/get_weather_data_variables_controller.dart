import 'package:test_2/data/api/api.dart';
import 'package:test_2/data/model/get_weather_data_variables_model/get_weather_data_variables_model.dart';

class GetWeatherDataVariablesController {
  var api = Api();

  Future<GetWeatherDataVariablesModel> getWeatherDataVariables() async {
    var mylocation = await api.getMyCurrentLocationData();
    var myLatitude = mylocation.myLatitude;
    var myLongitude = mylocation.myLongitude;

    Map<String, dynamic> jsonData = await api.getCurrentWeatherData(
        myLatitude: myLatitude, myLongitude: myLongitude);

    return GetWeatherDataVariablesModel(
      location: jsonData['name'],
      image: jsonData['weather'][0]['icon'],
      word: jsonData['weather'][0]['main'],
      windSpeed: jsonData['wind']['speed'],
      temperature:
      double.parse((jsonData['main']['temp'] - 273.15).toStringAsFixed(1)),
      humidity: jsonData['main']['humidity'],
    );
  }
}