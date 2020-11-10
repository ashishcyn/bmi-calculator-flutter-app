import 'dart:math';

class Calculations {
  final int height;
  final int weight;

  double _bmi;

  Calculations({this.weight, this.height});

  String calculateBMI() {
    print(height);
    print(weight);
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getIntrepretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'Good Job! You have a normal body weight';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
