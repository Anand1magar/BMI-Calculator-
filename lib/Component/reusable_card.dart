import 'package:flutter/material.dart';



class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;     // Value store yesma hunxaaa 
  final Function onPress;    //coustum Weight  // initial variable // member variale 



  ReusableCard({this.color, this.cardChild, this.onPress});  //value inpute yesma aauxaa

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Container(

         child: cardChild,  //Coustum Weight
         margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        
        ),
    );
  }
}