// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_weather_data_variables_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetWeatherItemsModel _$$_GetWeatherItemsModelFromJson(
        Map<String, dynamic> json) =>
    _$_GetWeatherItemsModel(
      location: json['location'] as String,
      image: json['image'] as String,
      word: json['word'] as String,
      windSpeed: (json['windSpeed'] as num).toDouble(),
      temperature: (json['temperature'] as num).toDouble(),
      humidity: json['humidity'] as int,
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
