import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test_2/data/constant/constant.dart';
import 'package:test_2/data/model/get_my_current_location_model/get_my_current_location_model.dart';

/// 이 클래스를 호출할 떄 API라는 코드면 무엇인지 알 수 있는가?
/// API를 2개로 나누어서 Location, Weather 두가지로 나누는것을 추천한다.
/// 이 부분에서 수정할게 많은데 이것은 나중에 수업할 때 해줌 일단 Model을 왜 만드는지 이유를 알아보는게 좋을듯

class Api {
  final dio = Dio();
  final constant = Constant();

  Future<GetMyCurrentLocationModel> getMyCurrentLocationData() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      return GetMyCurrentLocationModel(
          myLatitude: position.latitude, myLongitude: position.longitude);
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<Map<String, dynamic>> getCurrentWeatherData({required double myLatitude, required double myLongitude}) async {
    Response response = await dio.get('https://api.openweathermap.org/data/2.5/weather?lat=$myLatitude&lon=$myLongitude&appid=${Constant.presentWeatherApiKey}');

    var getData = response.data;



    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = response.data;
      return jsonData;
    }
    throw ('statusCode: ${response.statusCode}');
  }
}
