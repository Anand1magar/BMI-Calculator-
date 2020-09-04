import 'package:flutter/material.dart';
import 'package:bmi_calculater/Component/input_data.dart';

void main(){
  runApp(MyApp(),);
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
      ),
      home: InputData(),
    );
  }
}



