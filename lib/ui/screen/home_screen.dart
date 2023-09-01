import 'package:flutter/material.dart';

import 'package:test_2/ui/widget/location_setting_button.dart';
import 'package:test_2/ui/widget/time_widget.dart';
import 'package:test_2/ui/widget/time_setting_button.dart';

import '../../data/test/initial_data.dart';

//locationSettingButton line 60에서

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
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Column(
                children: [
                  Text(
                    '${shownTimeData.year} , ${shownTimeData.month} , ${shownTimeData.day}',
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  TimeWidget(hour: shownTimeData.hour, min: shownTimeData.minute)
                ],
              )),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LocationSettingButton(),
            ],
          ),
        ],
      ),
    ));
  }
}
