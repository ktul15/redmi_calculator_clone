import 'package:flutter/cupertino.dart';

class CalculatorProvider extends ChangeNotifier {
  String _currentEquation = "";
  String get currentEquation => _currentEquation;

  void updateEquation(String newAdditionToEquation) {
    _currentEquation += newAdditionToEquation;
    notifyListeners();
  }
}
