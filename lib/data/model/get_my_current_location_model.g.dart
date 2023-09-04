// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_my_current_location_model.dart';

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
