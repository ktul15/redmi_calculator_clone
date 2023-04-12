import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider extends ChangeNotifier {
  String _currentEquation = "";
  String get currentEquation => _currentEquation;

  final List<String> _previousEquations = [];
  List<String> get previousEquation => _previousEquations;

  final List<String> _previousAnswers = [];
  List<String> get previousAnswer => _previousAnswers;

  String _answer = "";
  String get answer => _answer;

  bool _isEqualsClicked = false;
  bool get isEqualsClicked => _isEqualsClicked;

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
    debugPrint("inside update");
    bool isNewCharacterNumber = _listOfNumbers.contains(newCharacter);
    bool isNewCharacterOperator = _listOfOperations.contains(newCharacter);

    if (isEqualsClicked == true) {
      _isEqualsClicked = false;
      notifyListeners();
    }

    // If number is clicked, then add it in the equation
    if (isNewCharacterNumber) {
      _currentEquation += newCharacter;
      calculateEquation();
      notifyListeners();
      return;
    }

    String lastCharacterInEquation =
        _currentEquation[_currentEquation.length - 1];

    debugPrint("isNewCharacterOperator: $isNewCharacterOperator");
    if (isNewCharacterOperator) {
      if (_listOfNumbers.contains(lastCharacterInEquation)) {
        _currentEquation += newCharacter;
        // calculateEquation();
        notifyListeners();
        return;
      } else {
        if (lastCharacterInEquation != newCharacter) {
          debugPrint("answer: $answer");

          replaceLastCharacter(newCharacter);
          // calculateEquation();
          notifyListeners();
          return;
        }
      }
    }
  }

  void replaceLastCharacter(String newCharacter) {
    _currentEquation =
        _currentEquation.substring(0, _currentEquation.length - 1);
    _currentEquation += newCharacter;
  }

  onEqualsClicked() {
    _isEqualsClicked = true;
    calculateEquation();
    _previousEquations.add(currentEquation);
    _currentEquation = answer;
    notifyListeners();
  }

  calculateEquation() {
    debugPrint("in equals");
    Parser p = Parser();
    Expression exp = p.parse(currentEquation);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    _answer = eval.toString();
  }

  onClearClicked() {
    _previousAnswers.add(answer);
    _previousEquations.add(currentEquation);
    _currentEquation = "";
    _answer = "";
    notifyListeners();
  }
}
