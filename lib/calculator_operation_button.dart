import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:redmi_calculator_clone/calculator_provider.dart';

class CalculatorOperationButton extends StatelessWidget {
  const CalculatorOperationButton(
      {super.key,
      this.textOnButton,
      this.iconOnButton,
      this.isCircular,
      this.value});

  final String? textOnButton;
  final IconData? iconOnButton;
  final bool? isCircular;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Provider.of<CalculatorProvider>(context, listen: false)
            .updateEquation(value ?? "");
      }),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.25,
        child: Center(
          child: textOnButton != null
              ? Text(textOnButton!,
                  style: const TextStyle(
                    fontSize: 32,
                    color: Color(0xfff87436),
                  ))
              : Icon(
                  iconOnButton,
                  color: const Color(0xfff87436),
                ),
        ),
      ),
    );
  }
}
