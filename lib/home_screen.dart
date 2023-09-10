import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_2/controller/time_controller.dart';
import 'package:test_2/original_design_value.dart';

import 'package:test_2/ui/screen/weather_objects_screen.dart';
import 'package:test_2/ui/widget/time_text.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// 이런식으로 특정 const 값을 호출할때는 클래스를 직접 호출하는게 더 좋다.
  /// 왜냐 굳이 변수로 할 이유가 없기에 코드를 더욱 간결하게 만들 수 있다.
  var originalColors = OriginalColorValue();

  @override
  Widget build(BuildContext context) {
    final timeController = Provider.of<TimeController>(context);
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          /// 아래처럼 사용하면 된다.
          // color: originalColors.homeScreenBackgroundColor,
          color: OriginalColorValue().homeScreenBackgroundColor,
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
                        // Text(
                        //   '${Provider.of<TimeController>(context).presentTimeModel.year} , ${Provider.of<TimeController>(context).presentTimeModel.month} , ${Provider.of<TimeController>(context).presentTimeModel.day}',
                        //   style:
                        //       TextStyle(fontSize: 25.sp, color: originalColors.widgetTextColor),
                        // ),
                        /// 오히려 위에 태마 부분보다 이 부분을 변수화 해주면 좋다.
                        /// 최종적인 형태로 아래처럼 사용하는것이 보다 간결하고 관리하기 편하다.
                        Text(
                          '${timeController.presentTimeModel.year} , ${timeController.presentTimeModel.month} , ${timeController.presentTimeModel.day}',
                          style:
                          TextStyle(fontSize: 25.sp, color: OriginalColorValue().widgetTextColor),
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
