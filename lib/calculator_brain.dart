import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double? _bmi;

  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  // Calculate BMI
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  // Get BMI Result
  String getResult() {
    if (_bmi == null) {
      return 'Please calculate BMI first.';
    }
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  // Get Interpretation
  String getInterpretation() {
    if (_bmi == null) {
      return 'Please calculate BMI first.';
    }
    if (_bmi! >= 25) {
      return 'You should try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You are doing great!';
    } else {
      return 'You might need to eat more.';
    }
  }
}
