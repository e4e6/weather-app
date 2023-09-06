import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_2/controller/get_weather_data_variables_controller.dart';
import 'package:test_2/controller/time_controller.dart';

import 'package:test_2/ui/widget/humidity_container.dart';
import 'package:test_2/ui/widget/temperature_text.dart';
import 'package:test_2/ui/widget/weather_image_and_text.dart';
import 'package:test_2/ui/widget/wind_speed_container.dart';

//<?>이렇게 한 화면을 두 파일로 반반 나누기도 하는지 궁금함
class WeatherVariablesScreen extends StatefulWidget {
  WeatherVariablesScreen({super.key});

  @override
  State<WeatherVariablesScreen> createState() => _WeatherObjectsScreenState();
}

class _WeatherObjectsScreenState extends State<WeatherVariablesScreen> {
  //

  @override
  void initState() {
    super.initState();
    Provider.of<GetWeatherDataVariablesController>(context,listen:false).updateGetWeatherDataVariablesModel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    TemperatureWidget(temperature: Provider.of<GetWeatherDataVariablesController>(context).weatherItems.temperature),
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () {
                        Provider.of<GetWeatherDataVariablesController>(context,listen:false).updateGetWeatherDataVariablesModel();
                        Provider.of<TimeController>(context,listen:false).updatePresentTimeModel();
                      },
                      child: Container(
                          width: 140.sp,
                          height: 40.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50).w,
                            color: Colors.grey[350],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${Provider.of<GetWeatherDataVariablesController>(context).weatherItems.location}',
                                style: TextStyle(fontSize: 25.sp),
                              ),
                              Icon(Icons.location_on, size: 30.sp),
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 20.h, width: 20.w),
                WeatherWidget(
                    weatherWord: '${Provider.of<GetWeatherDataVariablesController>(context).weatherItems.word}',
                    weatherImage: '${Provider.of<GetWeatherDataVariablesController>(context).weatherItems.image}'),
              ],
            ),
          ],
        ),
        SizedBox(height: 50.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WindSpeedWidget(windSpeed: Provider.of<GetWeatherDataVariablesController>(context).weatherItems.windSpeed),
            SizedBox(height: 20.h, width: 20.w),
            HumidityWidget(humidity: Provider.of<GetWeatherDataVariablesController>(context).weatherItems.humidity),
          ],
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
