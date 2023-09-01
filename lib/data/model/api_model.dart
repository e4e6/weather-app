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
class GetWeatherItemsModel with _$GetWeatherItemsModel {
  factory GetWeatherItemsModel ({
  required String shownLocation,
  required String weatherIcon,
  required String weatherWord,
  required double shownWindSpeed,
  required double shownTemperature,
  required int shownHumidity,
  required List<double> graphData
  })=_GetWeatherItemsModel;
  factory GetWeatherItemsModel.fromJson(Map<String, Object?> json) => _$GetWeatherItemsModelFromJson(json);
}