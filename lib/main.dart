import 'screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmicalcv2/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(),
      home: InputPage(),
      routes: {
        '/result':(context)=>ResultsPage(),
      },
    );
  }
}
