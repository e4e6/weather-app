DateTime dt = DateTime.now();

class InitialData {
  int year = dt.year;
  int month = dt.month;
  int day = dt.day;
  int hour = dt.hour;
  int minute = dt.minute;
  double temperature = 11.1;
  String weatherWord = 'None';
  String weatherIcon = '0000';
  String location = 'location';
  double myLatitude = 0;
  double myLongitude = 0;
  double windSpeed = 0;
  int humidity = 0;
  List<double> graphData = [0.0,0,0,0,0];
}
