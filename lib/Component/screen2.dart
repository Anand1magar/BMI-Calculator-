import 'package:bmi_calculater/Screen/main.dart';
import 'package:bmi_calculater/Component/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculater/Screen/constant.dart';
import 'package:bmi_calculater/Component/bottomButton.dart';





class Screen2 extends StatelessWidget {
  final String bmiResult;
  final String resultText;    
  final String interpretation;

  Screen2({this.bmiResult, this.resultText, this.interpretation});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kTitleTextSytle,

              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kactiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                     resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(bmiResult, style: kBmiTextStyle),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RE-CALCULATE",
            onTab: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
        ],
      ),
    );
  }
}
