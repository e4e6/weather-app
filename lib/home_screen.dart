import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_2/controller/time_controller.dart';

import 'package:test_2/ui/screen/weather_objects_screen.dart';
import 'package:test_2/ui/widget/time_text.dart';

import 'constant/constant.dart';
import 'controller/get_weather_data_variables_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<GetWeatherDataVariablesController>(context, listen: false)
        .updateGetWeatherDataVariablesModel();
    Provider.of<TimeController>(context, listen: false)
        .updatePresentTimeModel();
  } //컨트롤러로 옮기기

  @override
  Widget build(BuildContext _) {
    final TimeController timeControllerRead = Provider.of<TimeController>(_);

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Constant().homeScreenBackgroundColor,
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
                          '${timeControllerRead.presentTimeModel.year} , ${timeControllerRead.presentTimeModel.month} , ${timeControllerRead.presentTimeModel.day}',
                          style: TextStyle(
                              fontSize: 25.sp,
                              color: Constant().widgetTextColor),
                        ),
                        TimeWidget(
                            hour: timeControllerRead.presentTimeModel.hour,
                            minute: timeControllerRead.presentTimeModel.minute)
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
