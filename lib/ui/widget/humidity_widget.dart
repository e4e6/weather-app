import 'package:flutter/material.dart';

class HumidityWidget extends StatefulWidget {
  HumidityWidget({super.key, required this.humidity});

  int humidity = 0;

  @override
  State<HumidityWidget> createState() => _HumidityWidgetState();
}

class _HumidityWidgetState extends State<HumidityWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.water_drop),
            Text('${widget.humidity}%',
                style: const TextStyle(fontSize: 30, color: Colors.black)),
          ],
        ));
  }
}
