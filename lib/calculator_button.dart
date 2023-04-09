import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:redmi_calculator_clone/calculator_provider.dart';

class Numberbutton extends StatelessWidget {
  const Numberbutton({super.key, required this.numberOnButton});

  final String numberOnButton;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Clicked $numberOnButton")));
        Provider.of<CalculatorProvider>(context, listen: false)
            .updateEquation(numberOnButton);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.25,
        child: Center(
          child: Text(
            numberOnButton,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
