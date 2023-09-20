import 'package:geolocator/geolocator.dart';
import 'package:test_2/data/model/get_my_current_location_model/get_my_current_location_model.dart';

class LocationAPI {
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
}
