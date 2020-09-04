import 'dart:math';
class CalculateBrain {

  
CalculateBrain({this.weight, this.height});

  final int weight;
  final int height;
   

  double _bmi;

  String calulateBMI() {
    double _bmi = weight / pow(height/100, 2);
   return _bmi.toStringAsFixed(1);   

  } 

  String getResult(){
    if (_bmi >= 25){
      return "OverWeight";
    }
   else if (_bmi > 18.8){
     return "Normal";
   }
   else return "Under Weight";


  }

  String getInterpretataion(){
     if(_bmi >= 25){
       return " your have a heigher then normal body weight. Try to exercise";

     }else if(_bmi > 18.5){
       return "you have a normal body weight";

     }else return "You have lower the normal body weight. You can eat a bit more.";
  }

}