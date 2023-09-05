// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeModel _$TimeModelFromJson(Map<String, dynamic> json) {
  return _TimeModel.fromJson(json);
}

/// @nodoc
mixin _$TimeModel {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeModelCopyWith<TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeModelCopyWith<$Res> {
  factory $TimeModelCopyWith(TimeModel value, $Res Function(TimeModel) then) =
      _$TimeModelCopyWithImpl<$Res, TimeModel>;
  @useResult
  $Res call({int year, int month, int day, int hour, int minute});
}

/// @nodoc
class _$TimeModelCopyWithImpl<$Res, $Val extends TimeModel>
    implements $TimeModelCopyWith<$Res> {
  _$TimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? hour = null,
    Object? minute = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeModelCopyWith<$Res> implements $TimeModelCopyWith<$Res> {
  factory _$$_TimeModelCopyWith(
          _$_TimeModel value, $Res Function(_$_TimeModel) then) =
      __$$_TimeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month, int day, int hour, int minute});
}

/// @nodoc
class __$$_TimeModelCopyWithImpl<$Res>
    extends _$TimeModelCopyWithImpl<$Res, _$_TimeModel>
    implements _$$_TimeModelCopyWith<$Res> {
  __$$_TimeModelCopyWithImpl(
      _$_TimeModel _value, $Res Function(_$_TimeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? day = null,
    Object? hour = null,
    Object? minute = null,
  }) {
    return _then(_$_TimeModel(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeModel implements _TimeModel {
  _$_TimeModel(
      {required this.year,
      required this.month,
      required this.day,
      required this.hour,
      required this.minute});

  factory _$_TimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TimeModelFromJson(json);

  @override
  final int year;
  @override
  final int month;
  @override
  final int day;
  @override
  final int hour;
  @override
  final int minute;

  @override
  String toString() {
    return 'TimeModel(year: $year, month: $month, day: $day, hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeModel &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, day, hour, minute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeModelCopyWith<_$_TimeModel> get copyWith =>
      __$$_TimeModelCopyWithImpl<_$_TimeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeModelToJson(
      this,
    );
  }
}

abstract class _TimeModel implements TimeModel {
  factory _TimeModel(
      {required final int year,
      required final int month,
      required final int day,
      required final int hour,
      required final int minute}) = _$_TimeModel;

  factory _TimeModel.fromJson(Map<String, dynamic> json) =
      _$_TimeModel.fromJson;

  @override
  int get year;
  @override
  int get month;
  @override
  int get day;
  @override
  int get hour;
  @override
  int get minute;
  @override
  @JsonKey(ignore: true)
  _$$_TimeModelCopyWith<_$_TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
