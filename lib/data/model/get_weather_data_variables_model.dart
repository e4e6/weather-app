import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_weather_data_variables_model.freezed.dart';
part 'get_weather_data_variables_model.g.dart';

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