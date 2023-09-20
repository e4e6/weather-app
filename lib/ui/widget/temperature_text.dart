import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_2/constant/constant.dart';

class TemperatureWidget extends StatefulWidget {
  TemperatureWidget({super.key, required this.temperature});

  double temperature = 0;

  @override
  State<TemperatureWidget> createState() => _TemperatureWidgetState();
}

class _TemperatureWidgetState extends State<TemperatureWidget> {
  @override
  Widget build(BuildContext _) {
    return Text(
      '${widget.temperature}°',
      style: TextStyle(fontSize: 60.w, color: Constant().widgetTextColor),
    );
  }
}
