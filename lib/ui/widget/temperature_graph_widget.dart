import 'package:flutter/material.dart';

class TemperatureGraphWidget extends StatefulWidget {
  TemperatureGraphWidget({super.key, required this.graphData});

  var graphData = [];

  @override
  State<TemperatureGraphWidget> createState() => _TemperatureGraphWidgetState();
}

class _TemperatureGraphWidgetState extends State<TemperatureGraphWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(30),
        ),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              try {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          '+${(index + 1) * 3} hours: ${widget.graphData[index]}°',
                          style: const TextStyle(fontSize: 40),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                );
              } catch (e) {
                return Container(
                  child: Text(
                    'None',
                    style: const TextStyle(fontSize: 40),
                  ),
                );
              }
            }));
  }
}
