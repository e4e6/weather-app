import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_2/data/api/api.dart';
import 'package:test_2/data/model/api_model.dart';

import 'package:test_2/data/test/initial_data.dart';
import 'package:test_2/ui/widget/temperature_text.dart';
import 'package:test_2/ui/widget/weather_icon_and_text.dart';
import 'package:test_2/ui/widget/wind_speed_container.dart';

import 'humidity_container.dart';

class LocationSettingButton extends StatefulWidget {
  LocationSettingButton({super.key});
  var api = Api();

  var weatherItems = GetWeatherDataVariablesModel(
      shownLocation: InitialData().location,
      weatherIcon: InitialData().weatherIcon,
      weatherWord: InitialData().weatherWord,
      shownWindSpeed: InitialData().windSpeed,
      shownTemperature: InitialData().temperature,
      shownHumidity: InitialData().humidity,
      );




  @override
  State<LocationSettingButton> createState() => _LocationSettingButtonState();
}
class _LocationSettingButtonState extends State<LocationSettingButton> {
  @override
  void initState(){
    super.initState();
    reload();
  }
  void reload()async{
    var temp = await widget.api.getWeatherDataVariables();
    setState(() {
      widget.weatherItems = temp as GetWeatherDataVariablesModel;
    });
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
                    TemperatureWidget(temperature: widget.weatherItems.shownTemperature),
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
                                '${widget.weatherItems.shownLocation}',
                                style: TextStyle(fontSize: 25.sp),
                              ),
                              Icon(
                                Icons.location_on,
                                size:30.sp
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,width: 20.w),
                WeatherWidget(
                    weatherWord: '${widget.weatherItems.weatherWord}',
                    weatherIcon: '${widget.weatherItems.weatherIcon}'),
              ],
            ),
          ],
        ),
        SizedBox(height: 50.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WindSpeedWidget(windSpeed: widget.weatherItems.shownWindSpeed),
            SizedBox(height: 20.h,width: 20.w),
            HumidityWidget(humidity: widget.weatherItems.shownHumidity),
          ],
        ),

        SizedBox(height: 20.h),
      ],
    );
  }
}

