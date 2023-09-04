import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_model.freezed.dart';
part 'api_model.g.dart';

@freezed
class GetMyCurrentLocationModel with _$GetMyCurrentLocationModel {
  factory GetMyCurrentLocationModel ({
    required double myLatitude, required double myLongitude
  }) =_GetMyCurrentLocationModel;
  factory GetMyCurrentLocationModel.fromJson(Map<String, Object?> json) => _$GetMyCurrentLocationModelFromJson(json);
}

@freezed
class GetWeatherDataVariablesModel with _$GetWeatherDataVariablesModel {
  factory GetWeatherDataVariablesModel ({
  required String location,
  required String image,
  required String word,
  required double windSpeed,
  required double temperature,
  required int humidity,
  })=_GetWeatherItemsModel;
  factory GetWeatherDataVariablesModel.fromJson(Map<String, Object?> json) => _$GetWeatherDataVariablesModelFromJson(json);
}