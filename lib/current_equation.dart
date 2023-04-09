import 'package:flutter/material.dart';

class CurrentEquationRow extends StatelessWidget {
  const CurrentEquationRow({super.key, required this.currentEquation});

  final String currentEquation;

  @override
  Widget build(BuildContext context) {
    debugPrint("current Equation: $currentEquation");
    return Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height * 0.10,
        width: double.infinity,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          currentEquation,
          style: const TextStyle(fontSize: 24),
        ));
  }
}
