import 'package:flutter/material.dart';
import 'package:bmi_calculater/Screen/constant.dart';

class IconContent extends StatelessWidget {
  
  final IconData icon;
  final String lable;

  IconContent({this.icon, this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
         icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
         lable,
          style: klableStyle,
        ),
      ],
    );
  }
}
