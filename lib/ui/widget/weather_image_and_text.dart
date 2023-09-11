import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_2/original_design_value.dart';

class WeatherWidget extends StatefulWidget {
  WeatherWidget(
      {super.key, required this.weatherWord, required this.weatherImage});

  String weatherWord = '';
  String weatherImage = '';

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      child: Column(
        children: [
          SizedBox(
              width: 140.w,
              child: widget.weatherImage != '0000'
                  ? Image.network(
                      height: 120.h,
                      'https://openweathermap.org/img/wn/${widget.weatherImage}@2x.png',
                    )
                  : Icon(Icons.question_mark, size: 120.h)),
          SizedBox(
            height: 10.h,
          ),
          Text(
            '${widget.weatherWord}',
            style: TextStyle(fontSize: 30.w, color: OriginalColorValue().widgetTextColor),
          ),
        ],
      ),
    );
  }
}
