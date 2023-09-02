import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HumidityWidget extends StatefulWidget {
  HumidityWidget({super.key, required this.humidity});

  int humidity = 0;

  @override
  State<HumidityWidget> createState() => _HumidityWidgetState();
}

class _HumidityWidgetState extends State<HumidityWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140.w,
        height: 120.h,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(20).r,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.water_drop, size: 30.sp),
            SizedBox(width: 5.w),
            Text('${widget.humidity}%',
                style: TextStyle(fontSize: 30.sp, color: Colors.black)),
          ],
        ));
  }
}
