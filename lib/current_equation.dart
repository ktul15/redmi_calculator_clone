import 'package:flutter/material.dart';

class CurrentEquationRow extends StatelessWidget {
  const CurrentEquationRow({super.key, required this.equation});

  final String equation;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.10,
      width: double.infinity,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        equation,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
