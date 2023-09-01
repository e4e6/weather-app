import 'package:flutter/material.dart';

class WeatherWidget extends StatefulWidget {
  WeatherWidget(
      {super.key, required this.weatherWord, required this.weatherIcon});

  String weatherWord = '';
  String weatherIcon = '';
  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
              width: 100,
              height: 100,
              child: widget.weatherIcon != '0000'
                  ? Image.network(
                      'https://openweathermap.org/img/wn/${widget.weatherIcon}@2x.png',
                    )
                  : const Icon(
                      Icons.question_mark,
                      size: 100,
                    )),

          Padding(padding: EdgeInsets.all(10)),

          Text(
            '${widget.weatherWord}',
            style: const TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
