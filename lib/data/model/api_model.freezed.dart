// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMyCurrentLocationModel _$GetMyCurrentLocationModelFromJson(
    Map<String, dynamic> json) {
  return _GetMyCurrentLocationModel.fromJson(json);
}

/// @nodoc
mixin _$GetMyCurrentLocationModel {
  double get myLatitude => throw _privateConstructorUsedError;
  double get myLongitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMyCurrentLocationModelCopyWith<GetMyCurrentLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMyCurrentLocationModelCopyWith<$Res> {
  factory $GetMyCurrentLocationModelCopyWith(GetMyCurrentLocationModel value,
          $Res Function(GetMyCurrentLocationModel) then) =
      _$GetMyCurrentLocationModelCopyWithImpl<$Res, GetMyCurrentLocationModel>;
  @useResult
  $Res call({double myLatitude, double myLongitude});
}

/// @nodoc
class _$GetMyCurrentLocationModelCopyWithImpl<$Res,
        $Val extends GetMyCurrentLocationModel>
    implements $GetMyCurrentLocationModelCopyWith<$Res> {
  _$GetMyCurrentLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myLatitude = null,
    Object? myLongitude = null,
  }) {
    return _then(_value.copyWith(
      myLatitude: null == myLatitude
          ? _value.myLatitude
          : myLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      myLongitude: null == myLongitude
          ? _value.myLongitude
          : myLongitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMyCurrentLocationModelCopyWith<$Res>
    implements $GetMyCurrentLocationModelCopyWith<$Res> {
  factory _$$_GetMyCurrentLocationModelCopyWith(
          _$_GetMyCurrentLocationModel value,
          $Res Function(_$_GetMyCurrentLocationModel) then) =
      __$$_GetMyCurrentLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double myLatitude, double myLongitude});
}

/// @nodoc
class __$$_GetMyCurrentLocationModelCopyWithImpl<$Res>
    extends _$GetMyCurrentLocationModelCopyWithImpl<$Res,
        _$_GetMyCurrentLocationModel>
    implements _$$_GetMyCurrentLocationModelCopyWith<$Res> {
  __$$_GetMyCurrentLocationModelCopyWithImpl(
      _$_GetMyCurrentLocationModel _value,
      $Res Function(_$_GetMyCurrentLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myLatitude = null,
    Object? myLongitude = null,
  }) {
    return _then(_$_GetMyCurrentLocationModel(
      myLatitude: null == myLatitude
          ? _value.myLatitude
          : myLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      myLongitude: null == myLongitude
          ? _value.myLongitude
          : myLongitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMyCurrentLocationModel implements _GetMyCurrentLocationModel {
  _$_GetMyCurrentLocationModel(
      {required this.myLatitude, required this.myLongitude});

  factory _$_GetMyCurrentLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetMyCurrentLocationModelFromJson(json);

  @override
  final double myLatitude;
  @override
  final double myLongitude;

  @override
  String toString() {
    return 'GetMyCurrentLocationModel(myLatitude: $myLatitude, myLongitude: $myLongitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMyCurrentLocationModel &&
            (identical(other.myLatitude, myLatitude) ||
                other.myLatitude == myLatitude) &&
            (identical(other.myLongitude, myLongitude) ||
                other.myLongitude == myLongitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, myLatitude, myLongitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMyCurrentLocationModelCopyWith<_$_GetMyCurrentLocationModel>
      get copyWith => __$$_GetMyCurrentLocationModelCopyWithImpl<
          _$_GetMyCurrentLocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMyCurrentLocationModelToJson(
      this,
    );
  }
}

abstract class _GetMyCurrentLocationModel implements GetMyCurrentLocationModel {
  factory _GetMyCurrentLocationModel(
      {required final double myLatitude,
      required final double myLongitude}) = _$_GetMyCurrentLocationModel;

  factory _GetMyCurrentLocationModel.fromJson(Map<String, dynamic> json) =
      _$_GetMyCurrentLocationModel.fromJson;

  @override
  double get myLatitude;
  @override
  double get myLongitude;
  @override
  @JsonKey(ignore: true)
  _$$_GetMyCurrentLocationModelCopyWith<_$_GetMyCurrentLocationModel>
      get copyWith => throw _privateConstructorUsedError;
}

GetWeatherItemsModel _$GetWeatherItemsModelFromJson(Map<String, dynamic> json) {
  return _GetWeatherItemsModel.fromJson(json);
}

/// @nodoc
mixin _$GetWeatherItemsModel {
  String get shownLocation => throw _privateConstructorUsedError;
  String get weatherIcon => throw _privateConstructorUsedError;
  String get weatherWord => throw _privateConstructorUsedError;
  double get shownWindSpeed => throw _privateConstructorUsedError;
  double get shownTemperature => throw _privateConstructorUsedError;
  int get shownHumidity => throw _privateConstructorUsedError;
  List<double> get graphData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWeatherItemsModelCopyWith<GetWeatherItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherItemsModelCopyWith<$Res> {
  factory $GetWeatherItemsModelCopyWith(GetWeatherItemsModel value,
          $Res Function(GetWeatherItemsModel) then) =
      _$GetWeatherItemsModelCopyWithImpl<$Res, GetWeatherItemsModel>;
  @useResult
  $Res call(
      {String shownLocation,
      String weatherIcon,
      String weatherWord,
      double shownWindSpeed,
      double shownTemperature,
      int shownHumidity,
      List<double> graphData});
}

/// @nodoc
class _$GetWeatherItemsModelCopyWithImpl<$Res,
        $Val extends GetWeatherItemsModel>
    implements $GetWeatherItemsModelCopyWith<$Res> {
  _$GetWeatherItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shownLocation = null,
    Object? weatherIcon = null,
    Object? weatherWord = null,
    Object? shownWindSpeed = null,
    Object? shownTemperature = null,
    Object? shownHumidity = null,
    Object? graphData = null,
  }) {
    return _then(_value.copyWith(
      shownLocation: null == shownLocation
          ? _value.shownLocation
          : shownLocation // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
      weatherWord: null == weatherWord
          ? _value.weatherWord
          : weatherWord // ignore: cast_nullable_to_non_nullable
              as String,
      shownWindSpeed: null == shownWindSpeed
          ? _value.shownWindSpeed
          : shownWindSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      shownTemperature: null == shownTemperature
          ? _value.shownTemperature
          : shownTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      shownHumidity: null == shownHumidity
          ? _value.shownHumidity
          : shownHumidity // ignore: cast_nullable_to_non_nullable
              as int,
      graphData: null == graphData
          ? _value.graphData
          : graphData // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetWeatherItemsModelCopyWith<$Res>
    implements $GetWeatherItemsModelCopyWith<$Res> {
  factory _$$_GetWeatherItemsModelCopyWith(_$_GetWeatherItemsModel value,
          $Res Function(_$_GetWeatherItemsModel) then) =
      __$$_GetWeatherItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shownLocation,
      String weatherIcon,
      String weatherWord,
      double shownWindSpeed,
      double shownTemperature,
      int shownHumidity,
      List<double> graphData});
}

/// @nodoc
class __$$_GetWeatherItemsModelCopyWithImpl<$Res>
    extends _$GetWeatherItemsModelCopyWithImpl<$Res, _$_GetWeatherItemsModel>
    implements _$$_GetWeatherItemsModelCopyWith<$Res> {
  __$$_GetWeatherItemsModelCopyWithImpl(_$_GetWeatherItemsModel _value,
      $Res Function(_$_GetWeatherItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shownLocation = null,
    Object? weatherIcon = null,
    Object? weatherWord = null,
    Object? shownWindSpeed = null,
    Object? shownTemperature = null,
    Object? shownHumidity = null,
    Object? graphData = null,
  }) {
    return _then(_$_GetWeatherItemsModel(
      shownLocation: null == shownLocation
          ? _value.shownLocation
          : shownLocation // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIcon: null == weatherIcon
          ? _value.weatherIcon
          : weatherIcon // ignore: cast_nullable_to_non_nullable
              as String,
      weatherWord: null == weatherWord
          ? _value.weatherWord
          : weatherWord // ignore: cast_nullable_to_non_nullable
              as String,
      shownWindSpeed: null == shownWindSpeed
          ? _value.shownWindSpeed
          : shownWindSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      shownTemperature: null == shownTemperature
          ? _value.shownTemperature
          : shownTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      shownHumidity: null == shownHumidity
          ? _value.shownHumidity
          : shownHumidity // ignore: cast_nullable_to_non_nullable
              as int,
      graphData: null == graphData
          ? _value._graphData
          : graphData // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetWeatherItemsModel implements _GetWeatherItemsModel {
  _$_GetWeatherItemsModel(
      {required this.shownLocation,
      required this.weatherIcon,
      required this.weatherWord,
      required this.shownWindSpeed,
      required this.shownTemperature,
      required this.shownHumidity,
      required final List<double> graphData})
      : _graphData = graphData;

  factory _$_GetWeatherItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetWeatherItemsModelFromJson(json);

  @override
  final String shownLocation;
  @override
  final String weatherIcon;
  @override
  final String weatherWord;
  @override
  final double shownWindSpeed;
  @override
  final double shownTemperature;
  @override
  final int shownHumidity;
  final List<double> _graphData;
  @override
  List<double> get graphData {
    if (_graphData is EqualUnmodifiableListView) return _graphData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_graphData);
  }

  @override
  String toString() {
    return 'GetWeatherItemsModel(shownLocation: $shownLocation, weatherIcon: $weatherIcon, weatherWord: $weatherWord, shownWindSpeed: $shownWindSpeed, shownTemperature: $shownTemperature, shownHumidity: $shownHumidity, graphData: $graphData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetWeatherItemsModel &&
            (identical(other.shownLocation, shownLocation) ||
                other.shownLocation == shownLocation) &&
            (identical(other.weatherIcon, weatherIcon) ||
                other.weatherIcon == weatherIcon) &&
            (identical(other.weatherWord, weatherWord) ||
                other.weatherWord == weatherWord) &&
            (identical(other.shownWindSpeed, shownWindSpeed) ||
                other.shownWindSpeed == shownWindSpeed) &&
            (identical(other.shownTemperature, shownTemperature) ||
                other.shownTemperature == shownTemperature) &&
            (identical(other.shownHumidity, shownHumidity) ||
                other.shownHumidity == shownHumidity) &&
            const DeepCollectionEquality()
                .equals(other._graphData, _graphData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shownLocation,
      weatherIcon,
      weatherWord,
      shownWindSpeed,
      shownTemperature,
      shownHumidity,
      const DeepCollectionEquality().hash(_graphData));

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

abstract class _GetWeatherItemsModel implements GetWeatherItemsModel {
  factory _GetWeatherItemsModel(
      {required final String shownLocation,
      required final String weatherIcon,
      required final String weatherWord,
      required final double shownWindSpeed,
      required final double shownTemperature,
      required final int shownHumidity,
      required final List<double> graphData}) = _$_GetWeatherItemsModel;

  factory _GetWeatherItemsModel.fromJson(Map<String, dynamic> json) =
      _$_GetWeatherItemsModel.fromJson;

  @override
  String get shownLocation;
  @override
  String get weatherIcon;
  @override
  String get weatherWord;
  @override
  double get shownWindSpeed;
  @override
  double get shownTemperature;
  @override
  int get shownHumidity;
  @override
  List<double> get graphData;
  @override
  @JsonKey(ignore: true)
  _$$_GetWeatherItemsModelCopyWith<_$_GetWeatherItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
