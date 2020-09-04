import 'package:flutter/material.dart';
import 'package:bmi_calculater/Screen/constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({ this.onTab,this.buttonTitle});
  final Function onTab;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
              child: Container(
        child: Center(child: Text(buttonTitle, style: TextStyle(fontSize: 25.0))),
        height: 80.0,
        color: kbuttomContainerColor,
        width: double.infinity,
      ),
    );
  }
}