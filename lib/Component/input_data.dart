import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:bmi_calculater/Screen/constant.dart';
import 'bottomButton.dart';
import 'package:bmi_calculater/Component/screen2.dart';
import 'roundIconButton.dart';
import 'package:bmi_calculater/Screen/Calculater_brain.dart';

enum Gender {
  male,
  female,
}

class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => _InputDataState(); 
}

class _InputDataState extends State<InputData> {
  Gender selectedGender;

  int height = 110; // this height value will be change when you drag the slider
  int weight = 60;
  int age = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                // Gesture Dection for Function
                onPress: () {
                  //Annonamus Function
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                color: selectedGender == Gender.male
                    ? kactiveCardColor
                    : kinactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  lable: "Male",
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  lable: "Female",
                ),
                color: selectedGender == Gender.female
                    ? kactiveCardColor
                    : kinactiveCardColor,
              ),
            ),
          ],
        )),
        Expanded(
            child: Row(
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Height", style: klableStyle),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberStyle,
                        ),
                        Text("cm", style: klableStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.red[700],
                        inactiveTrackColor: Colors.red[100],
                        trackShape: RoundedRectSliderTrackShape(),
                        trackHeight: 4.0,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        thumbColor: Colors.redAccent,
                        overlayColor: Colors.red.withAlpha(32),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 28.0),
                        tickMarkShape: RoundSliderTickMarkShape(),
                        activeTickMarkColor: Colors.red[700],
                        inactiveTickMarkColor: Colors.red[100],
                        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                        valueIndicatorColor: Colors.redAccent,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 110,
                        max: 220.0,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        //when slider move the value will store in this newValue Variable first
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ),
                color: kactiveCardColor,
              ),
            ),
          ],
        )),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Weight", style: klableStyle),
                      Text(
                        weight.toString(),
                        style: kNumberStyle,
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          RoundIconButton(
                            // Coustume Flooting Action Button

                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ), // Round Icon Button

                          SizedBox(width: 2.0),

                          RoundIconButton(
                            onPress: () {
                              setState(() {
                                weight--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                        ],
                      ),
                    ],
                  ),
                  color: kactiveCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Age",
                        style: klableStyle,
                      ),
                      Text(age.toString(), style: kNumberStyle),
                      SizedBox(height: 25.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              }),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                  color: kactiveCardColor,
                ),
              ),
            ],
          ),
        ),
        BottomButton(
          buttonTitle: "CALCULATE",
          onTab: () {
            CalculateBrain calc =
                CalculateBrain(height: height, weight: weight);

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Screen2(
                  bmiResult: calc.getResult(),
                  resultText: calc.getResult(),
                  interpretation: calc.getInterpretataion(),
                  

                ),
              ),
            );
          },
        ),
      ],
    ));
  }
}
