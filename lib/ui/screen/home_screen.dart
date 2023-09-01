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
  int shownYear = InitialData().year;
  int shownMonth = InitialData().month;
  int shownDay = InitialData().day;
  int shownHour = InitialData().hour;
  int shownMinute = InitialData().minute;

  void _updateDataTimeSettingButton(
      {required int year,
      required int month,
      required int day,
      required int hour,
      required int min}) {
    setState(() {
      shownYear = year;
      shownMonth = month;
      shownDay = day;
      shownHour = hour;
      shownMinute = min;
    });
  }

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
              TimeSettingButton(
                  updateDataTimeSettingButton: _updateDataTimeSettingButton),
              const Padding(padding: EdgeInsets.all(10)),
              Center(
                  child: Column(
                children: [
                  Text(
                    '$shownYear , $shownMonth , $shownDay',
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  TimeWidget(hour: shownHour, min: shownMinute)
                ],
              )),
              const Padding(padding: EdgeInsets.all(30)),
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
