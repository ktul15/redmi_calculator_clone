import 'package:flutter/cupertino.dart';

class CalculatorProvider extends ChangeNotifier {
  String _currentEquation = "";
  String get currentEquation => _currentEquation;

  final _listOfNumbers = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "."
  ];

  final _listOfOperations = ["+", "-", "*", "/", "%"];

  void updateEquation(String newCharacter) {
    bool isNewCharacterNumber = _listOfNumbers.contains(newCharacter);
    bool isNewCharacterOperator = _listOfOperations.contains(newCharacter);

    if (isNewCharacterNumber) {
      _currentEquation += newCharacter;
      notifyListeners();
      return;
    }

    String lastCharacterInEquation =
        _currentEquation[_currentEquation.length - 1];

    if (isNewCharacterOperator) {
      if (_listOfNumbers.contains(lastCharacterInEquation)) {
        _currentEquation += newCharacter;
        notifyListeners();
        return;
      } else {
        if (lastCharacterInEquation != newCharacter) {
          replaceLastCharacter(newCharacter);
          return;
        }
      }
    }
  }

  void replaceLastCharacter(String newCharacter) {
    _currentEquation =
        _currentEquation.substring(0, _currentEquation.length - 1);
    _currentEquation += newCharacter;
    notifyListeners();
  }
}
