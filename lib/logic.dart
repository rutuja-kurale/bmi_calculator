import 'dart:math';

class Logic {
  
  double bmiCalculation(int height, int weight) {
    double bmi = (weight / (pow(height / 100, 2)));
    return bmi;
  }
}
