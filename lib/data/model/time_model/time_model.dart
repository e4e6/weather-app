import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_model.freezed.dart';

part 'time_model.g.dart';

@freezed
class TimeModel with _$TimeModel {
  factory TimeModel({
    @Default(0) int year,
    @Default(0) int month,
    @Default(0) int day,
    @Default(0) int hour,
    @Default(0) int minute,
  }) = _TimeModel;

  factory TimeModel.fromJson(Map<String, Object?> json) =>
      _$TimeModelFromJson(json);
}
