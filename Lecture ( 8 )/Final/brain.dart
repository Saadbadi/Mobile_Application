

import 'dart:math';
import 'dart:math';

class Calculate_Result {

  Calculate_Result({required this.heigh, required this.weight});

   final heigh;
  final weight;
  late double _bmi;

  String calculateBMI()
  {
    // BMI equation
    _bmi = weight/pow(heigh/100, 2);
    // Return BMI after convert it to string
    return _bmi.toStringAsFixed(1);
  }

  String getResult()
  {
    print(_bmi);
    if(_bmi >= 25)
    {
      return 'overWeight';
    }
    else if(_bmi > 18.5)
    {return 'Normal';}
    else
    {return 'UderWeight';}
  }

  String interpretation()
  {

    if(_bmi >= 25)
    {return 'You are very fat , Please reduce your weight';}
    else if(_bmi > 18.5)
    {return 'Your body is very good';}
    else
    {return 'Your body is very very slim please go and eat';}

  }







}
