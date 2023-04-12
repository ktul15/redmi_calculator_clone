import 'package:flutter/material.dart';

class CurrentEquationRow extends StatelessWidget {
  const CurrentEquationRow(
      {super.key,
      required this.currentEquation,
      required this.isEqualsClicked});

  final String currentEquation;
  final bool isEqualsClicked;

  @override
  Widget build(BuildContext context) {
    debugPrint("current Equation: $currentEquation");
    return Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: double.infinity,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          currentEquation,
          style: TextStyle(fontSize: isEqualsClicked ? 24 : 32),
        ));
  }
}
