import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_my_current_location_model.freezed.dart';

part 'get_my_current_location_model.g.dart';

@freezed
class GetMyCurrentLocationModel with _$GetMyCurrentLocationModel {
  factory GetMyCurrentLocationModel(
      {required double myLatitude,
      required double myLongitude}) = _GetMyCurrentLocationModel;

  factory GetMyCurrentLocationModel.fromJson(Map<String, Object?> json) =>
      _$GetMyCurrentLocationModelFromJson(json);
}
