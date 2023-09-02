import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_2/data/test/initial_data.dart';

import 'package:test_2/ui/widget/location_setting_button.dart';
import 'package:test_2/ui/widget/time_widget.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var shownTimeData = InitialData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80.h,),
            Container(
              color:Colors.blue[200],
              child: SingleChildScrollView(
      child: Column(
              children: [
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Column(
                      children: [
                        Text(
                          '${shownTimeData.year} , ${shownTimeData.month} , ${shownTimeData.day}',
                          style: TextStyle(fontSize: 25.sp, color: Colors.black),
                        ),
                        TimeWidget(hour: shownTimeData.hour, minute: shownTimeData.minute)
                      ],
                    )),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LocationSettingButton(),
                  ],
                ),
              ],
      ),
    ),
            ),
          ],
        ));
  }
}
