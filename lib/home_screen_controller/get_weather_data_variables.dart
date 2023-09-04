import 'package:test_2/data/api/api.dart';
import 'package:test_2/data/model/api_model.dart';

class GetWeatherDataVariables {
  var api = Api();

  Future<GetWeatherDataVariablesModel> getWeatherDataVariables() async {
    List<double> graphData = [];
    var mylocation = await api.getMyCurrentLocationData();
    var myLatitude = mylocation.myLatitude;
    var myLongitude = mylocation.myLongitude;

    Map<String, dynamic> jsonData = await api.getCurrentWeatherData(
        myLatitude: myLatitude, myLongitude: myLongitude);
    Map<String, dynamic> jsonDataForGraph = await api.get5DaysWeatherData(
        myLatitude: myLatitude, myLongitude: myLongitude);

    return GetWeatherDataVariablesModel(
      shownLocation: jsonData['name'],
      weatherIcon: jsonData['weather'][0]['icon'],
      weatherWord: jsonData['weather'][0]['main'],
      shownWindSpeed: jsonData['wind']['speed'],
      shownTemperature:
      double.parse((jsonData['main']['temp'] - 273.15).toStringAsFixed(1)),
      shownHumidity: jsonData['main']['humidity'],
    );
  }
}