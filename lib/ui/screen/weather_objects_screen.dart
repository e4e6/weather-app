import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_2/data/api/api.dart';
import 'package:test_2/data/model/get_weather_data_variables_model.dart';

import 'package:test_2/data/test/initial_data.dart';
import 'package:test_2/home_screen_controller/get_weather_data_variables.dart';
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
  var api = Api();
  var getWeatherDataVariables = GetWeatherDataVariablesController();
  var weatherItems = GetWeatherDataVariablesModel(
    location: InitialData().location,
    image: InitialData().weatherImage,
    word: InitialData().weatherWord,
    windSpeed: InitialData().windSpeed,
    temperature: InitialData().temperature,
    humidity: InitialData().humidity,
  );

  void reload() async {
    var temp = await getWeatherDataVariables.getWeatherDataVariables();
    setState(() {
      weatherItems = temp as GetWeatherDataVariablesModel;
    });
  }

  @override
  void initState() {
    super.initState();
    reload();
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
                    TemperatureWidget(temperature: weatherItems.temperature),
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () {
                        reload();
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
                              // SizedBox(
                              // height: 10.h,
                              // width: 20.w,
                              // ),
                              Text(
                                '${weatherItems.location}',
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
                    weatherWord: '${weatherItems.word}',
                    weatherImage: '${weatherItems.image}'),
              ],
            ),
          ],
        ),
        SizedBox(height: 50.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WindSpeedWidget(windSpeed: weatherItems.windSpeed),
            SizedBox(height: 20.h, width: 20.w),
            HumidityWidget(humidity: weatherItems.humidity),
          ],
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
