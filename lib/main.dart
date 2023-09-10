import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_2/controller/get_weather_data_variables_controller.dart';
import 'package:test_2/controller/time_controller.dart';
import 'package:test_2/home_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => TimeController()),
        ChangeNotifierProvider(create: (context)=> GetWeatherDataVariablesController(),),
        /// Buildcontext 같은 경우에는 _ 이런식으로 자주 사용한다. 아래처럼 사용하면 된다.

        // ChangeNotifierProvider(create:(_) => TimeController()),
        // ChangeNotifierProvider(create: (_)=> GetWeatherDataVariablesController(),)
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 640),
          builder: (_, child) => MaterialApp(home: HomeScreen())),
    );
  }
}