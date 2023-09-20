import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_weather_data_variables_model.freezed.dart';
part 'get_weather_data_variables_model.g.dart';

@freezed
class GetWeatherDataVariablesModel with _$GetWeatherDataVariablesModel {
  factory GetWeatherDataVariablesModel ({
    @Default('loading') String location,
    @Default('0000') String image,
    @Default('loading') String word,
    @Default(0.0) double windSpeed,
    @Default(0.0) double temperature,
    @Default(0) int humidity,
  })=_GetWeatherItemsModel;
  factory GetWeatherDataVariablesModel.fromJson(Map<String, Object?> json) => _$GetWeatherDataVariablesModelFromJson(json);
}