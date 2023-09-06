import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_2/controller/time_controller.dart';
import 'package:test_2/data/test/initial_data.dart';

import 'package:test_2/ui/screen/weather_objects_screen.dart';
import 'package:test_2/ui/widget/time_text.dart';

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
        Container(
          color: Colors.blue[200],
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
                          '${Provider.of<TimeController>(context).presentTimeModel.year} , ${Provider.of<TimeController>(context).presentTimeModel.month} , ${Provider.of<TimeController>(context).presentTimeModel.day}',
                          style:
                              TextStyle(fontSize: 25.sp, color: Colors.black),
                        ),
                        TimeWidget(
                            hour: Provider.of<TimeController>(context)
                                .presentTimeModel.hour,
                            minute: Provider.of<TimeController>(context)
                                .presentTimeModel.minute)
                      ],
                    )),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WeatherVariablesScreen(),
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
