// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_weather_data_variables_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetWeatherDataVariablesModel _$GetWeatherDataVariablesModelFromJson(
    Map<String, dynamic> json) {
  return _GetWeatherItemsModel.fromJson(json);
}

/// @nodoc
mixin _$GetWeatherDataVariablesModel {
  String get location => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWeatherDataVariablesModelCopyWith<GetWeatherDataVariablesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherDataVariablesModelCopyWith<$Res> {
  factory $GetWeatherDataVariablesModelCopyWith(
          GetWeatherDataVariablesModel value,
          $Res Function(GetWeatherDataVariablesModel) then) =
      _$GetWeatherDataVariablesModelCopyWithImpl<$Res,
          GetWeatherDataVariablesModel>;
  @useResult
  $Res call(
      {String location,
      String image,
      String word,
      double windSpeed,
      double temperature,
      int humidity});
}

/// @nodoc
class _$GetWeatherDataVariablesModelCopyWithImpl<$Res,
        $Val extends GetWeatherDataVariablesModel>
    implements $GetWeatherDataVariablesModelCopyWith<$Res> {
  _$GetWeatherDataVariablesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? image = null,
    Object? word = null,
    Object? windSpeed = null,
    Object? temperature = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetWeatherItemsModelCopyWith<$Res>
    implements $GetWeatherDataVariablesModelCopyWith<$Res> {
  factory _$$_GetWeatherItemsModelCopyWith(_$_GetWeatherItemsModel value,
          $Res Function(_$_GetWeatherItemsModel) then) =
      __$$_GetWeatherItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String location,
      String image,
      String word,
      double windSpeed,
      double temperature,
      int humidity});
}

/// @nodoc
class __$$_GetWeatherItemsModelCopyWithImpl<$Res>
    extends _$GetWeatherDataVariablesModelCopyWithImpl<$Res,
        _$_GetWeatherItemsModel>
    implements _$$_GetWeatherItemsModelCopyWith<$Res> {
  __$$_GetWeatherItemsModelCopyWithImpl(_$_GetWeatherItemsModel _value,
      $Res Function(_$_GetWeatherItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? image = null,
    Object? word = null,
    Object? windSpeed = null,
    Object? temperature = null,
    Object? humidity = null,
  }) {
    return _then(_$_GetWeatherItemsModel(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetWeatherItemsModel implements _GetWeatherItemsModel {
  _$_GetWeatherItemsModel(
      {this.location = 'loading',
      this.image = '0000',
      this.word = 'loading',
      this.windSpeed = 0.0,
      this.temperature = 0.0,
      this.humidity = 0});

  factory _$_GetWeatherItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetWeatherItemsModelFromJson(json);

  @override
  @JsonKey()
  final String location;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String word;
  @override
  @JsonKey()
  final double windSpeed;
  @override
  @JsonKey()
  final double temperature;
  @override
  @JsonKey()
  final int humidity;

  @override
  String toString() {
    return 'GetWeatherDataVariablesModel(location: $location, image: $image, word: $word, windSpeed: $windSpeed, temperature: $temperature, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetWeatherItemsModel &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, location, image, word, windSpeed, temperature, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetWeatherItemsModelCopyWith<_$_GetWeatherItemsModel> get copyWith =>
      __$$_GetWeatherItemsModelCopyWithImpl<_$_GetWeatherItemsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetWeatherItemsModelToJson(
      this,
    );
  }
}

abstract class _GetWeatherItemsModel implements GetWeatherDataVariablesModel {
  factory _GetWeatherItemsModel(
      {final String location,
      final String image,
      final String word,
      final double windSpeed,
      final double temperature,
      final int humidity}) = _$_GetWeatherItemsModel;

  factory _GetWeatherItemsModel.fromJson(Map<String, dynamic> json) =
      _$_GetWeatherItemsModel.fromJson;

  @override
  String get location;
  @override
  String get image;
  @override
  String get word;
  @override
  double get windSpeed;
  @override
  double get temperature;
  @override
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_GetWeatherItemsModelCopyWith<_$_GetWeatherItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
