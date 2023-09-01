import 'package:flutter/material.dart';
import 'package:test_2/ui/screen/home_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(home: HomeScreen());
}
