import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_2/original_design_value.dart';

class TimeWidget extends StatefulWidget {
  TimeWidget({super.key, required this.hour, required this.minute});

  int minute = 0;
  int hour = 0;

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  var originalColors = OriginalColorValue();

  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.hour}:${widget.minute}',
      style: TextStyle(fontSize: 40.sp, color: originalColors.widgetTextColor),
    );
  }
}
