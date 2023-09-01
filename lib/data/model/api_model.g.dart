// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMyCurrentLocationModel _$$_GetMyCurrentLocationModelFromJson(
        Map<String, dynamic> json) =>
    _$_GetMyCurrentLocationModel(
      myLatitude: (json['myLatitude'] as num).toDouble(),
      myLongitude: (json['myLongitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_GetMyCurrentLocationModelToJson(
        _$_GetMyCurrentLocationModel instance) =>
    <String, dynamic>{
      'myLatitude': instance.myLatitude,
      'myLongitude': instance.myLongitude,
    };

_$_GetWeatherItemsModel _$$_GetWeatherItemsModelFromJson(
        Map<String, dynamic> json) =>
    _$_GetWeatherItemsModel(
      shownLocation: json['shownLocation'] as String,
      weatherIcon: json['weatherIcon'] as String,
      weatherWord: json['weatherWord'] as String,
      shownWindSpeed: (json['shownWindSpeed'] as num).toDouble(),
      shownTemperature: (json['shownTemperature'] as num).toDouble(),
      shownHumidity: json['shownHumidity'] as int,
      graphData: (json['graphData'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_GetWeatherItemsModelToJson(
        _$_GetWeatherItemsModel instance) =>
    <String, dynamic>{
      'shownLocation': instance.shownLocation,
      'weatherIcon': instance.weatherIcon,
      'weatherWord': instance.weatherWord,
      'shownWindSpeed': instance.shownWindSpeed,
      'shownTemperature': instance.shownTemperature,
      'shownHumidity': instance.shownHumidity,
      'graphData': instance.graphData,
    };
