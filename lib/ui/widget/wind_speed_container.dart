import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_2/original_design_value.dart';

class WindSpeedWidget extends StatefulWidget {
  WindSpeedWidget({super.key, required this.windSpeed});

  double windSpeed = 0;

  @override
  State<WindSpeedWidget> createState() => _WindSpeedWidgetState();
}

class _WindSpeedWidgetState extends State<WindSpeedWidget> {
  var originalColors = OriginalColorValue();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140.w,
        height: 120.h,
        decoration: BoxDecoration(
          color: originalColors.widgetBackgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wind_power),
            Text('${widget.windSpeed}m/s',
                style: TextStyle(fontSize: 30.sp, color:originalColors.widgetTextColor)),
          ],
        ));
  }
}
