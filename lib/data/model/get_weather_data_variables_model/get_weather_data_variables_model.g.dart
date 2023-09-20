// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_weather_data_variables_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetWeatherItemsModel _$$_GetWeatherItemsModelFromJson(
        Map<String, dynamic> json) =>
    _$_GetWeatherItemsModel(
      location: json['location'] as String? ?? 'loading',
      image: json['image'] as String? ?? '0000',
      word: json['word'] as String? ?? 'loading',
      windSpeed: (json['windSpeed'] as num?)?.toDouble() ?? 0.0,
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0.0,
      humidity: json['humidity'] as int? ?? 0,
    );

Map<String, dynamic> _$$_GetWeatherItemsModelToJson(
        _$_GetWeatherItemsModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'image': instance.image,
      'word': instance.word,
      'windSpeed': instance.windSpeed,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
    };
