import 'package:flutter/material.dart';

class TimeWidget extends StatefulWidget {
  TimeWidget({super.key, required this.hour, required this.min});

  int min = 0;
  int hour = 0;

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.hour}:${widget.min}',
      style: const TextStyle(fontSize: 40, color: Colors.black),
    );
  }
}
