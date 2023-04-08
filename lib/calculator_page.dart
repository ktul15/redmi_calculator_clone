import 'package:flutter/material.dart';
import 'package:redmi_calculator_clone/calculator_button.dart';
import 'package:redmi_calculator_clone/calculator_operation_button.dart';
import 'package:redmi_calculator_clone/current_equation.dart';
import 'package:redmi_calculator_clone/result_text.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const CurrentEquationRow(equation: "2+5"),

            // Result Row
            const ResultText(result: "20"),

            // Calculator box
            Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.5),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: const [
                        CalculatorOperationButton(textOnButton: "C"),
                        CalculatorOperationButton(
                          iconOnButton: Icons.backspace_outlined,
                        ),
                        CalculatorOperationButton(iconOnButton: Icons.percent),
                        CalculatorOperationButton(
                          textOnButton: "/",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: const [
                        Numberbutton(numberOnButton: "7"),
                        Numberbutton(numberOnButton: "8"),
                        Numberbutton(numberOnButton: "9"),
                        CalculatorOperationButton(iconOnButton: Icons.close),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: const [
                        Numberbutton(numberOnButton: "4"),
                        Numberbutton(numberOnButton: "5"),
                        Numberbutton(numberOnButton: "6"),
                        CalculatorOperationButton(iconOnButton: Icons.remove),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: const [
                        Numberbutton(numberOnButton: "1"),
                        Numberbutton(numberOnButton: "2"),
                        Numberbutton(numberOnButton: "3"),
                        CalculatorOperationButton(iconOnButton: Icons.add),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: const [
                        CalculatorOperationButton(
                            iconOnButton: Icons.change_circle),
                        Numberbutton(numberOnButton: "0"),
                        Numberbutton(numberOnButton: "."),
                        CalculatorOperationButton(iconOnButton: Icons.add),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
