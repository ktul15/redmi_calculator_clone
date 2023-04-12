import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  const ResultText(
      {super.key, required this.result, required this.isEqualsClicked});

  final String result;
  final bool isEqualsClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: double.infinity,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        result,
        style: TextStyle(fontSize: isEqualsClicked ? 32 : 24),
      ),
    );
  }
}
