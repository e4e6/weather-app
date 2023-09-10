import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_2/controller/get_weather_data_variables_controller.dart';
import 'package:test_2/controller/time_controller.dart';
import 'package:test_2/original_design_value.dart';

import 'package:test_2/ui/widget/humidity_container.dart';
import 'package:test_2/ui/widget/temperature_text.dart';
import 'package:test_2/ui/widget/weather_image_and_text.dart';
import 'package:test_2/ui/widget/wind_speed_container.dart';

//<?>이렇게 한 화면을 두 파일로 반반 나누기도 하는지 궁금함
/// 위에 말이 먼지 정확히 모르겠음 구체적으로 적어주면 좋겠다.
/// 한 화면을 두개의 파일로 나누어야 되는 이유가 있다면 상관없다. 애당초 화면이라는것이 widget의 모임이기 때문에 크게 신경쓰지 말고 다 해본다음에 좋다고 생각하는걸 선택하면 된다.
class WeatherVariablesScreen extends StatefulWidget {
  WeatherVariablesScreen({super.key});

  @override
  State<WeatherVariablesScreen> createState() => _WeatherObjectsScreenState();
}

class _WeatherObjectsScreenState extends State<WeatherVariablesScreen> {
  var originalColors = OriginalColorValue();

  @override
  void initState() {
    super.initState();
    Provider.of<GetWeatherDataVariablesController>(context,listen:false).updateGetWeatherDataVariablesModel();
  }

  @override
  Widget build(BuildContext context) {
    /// 아래 코드도 provider은 변수로 만들기

    /// 예시 코드
    final weatherControllerRead = Provider.of<GetWeatherDataVariablesController>(context,listen:false);
    final weatherControllerWatch = Provider.of<GetWeatherDataVariablesController>(context,listen:true);

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
                            color: originalColors.widgetBackgroundColor,
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
