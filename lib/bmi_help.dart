import 'dart:math';

class BMIHelp {
  int weightValue = 0;
  int heightValue = 0;
  double _bmi = 0.0;

  BMIHelp({required this.weightValue, required this.heightValue}) {
    _bmi = weightValue / pow(heightValue / 100, 2);
  }

  String getResult() {
    if (_bmi < 25) {
      return "Normal!";
    } else if (_bmi < 30) {
      return "Overweight!";
    } else {
      return "Obese!";
    }
  }

  String getDescription() {
    if (_bmi < 25) {
      return "Bravo, djal i mire!";
    } else if (_bmi < 30) {
      return "Urgjent me i nise ushtrimet!";
    } else {
      return "Urgjent me lane brumin!";
    }
  }

  String getBMIValue() {
    return _bmi.toStringAsFixed(2);
  }
}
