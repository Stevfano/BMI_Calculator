import 'dart:math';

class Calculatorbrain {
  Calculatorbrain({required this.height, required this.weight});
  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    //convert to single place
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You have a very higher body weight. Consume less processed & sugary foods and engage in regular aerobic activities';
    } else if (_bmi >= 25) {
      return 'You have a higher normal body weight. Try exercise more';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight.Good job!';
    } else {
      return 'You have a lower than body weight. Advised to eat a bit more';
    }
  }
}
