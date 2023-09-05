// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_my_current_location_model.dart';

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
