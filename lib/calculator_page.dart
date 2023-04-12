import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:redmi_calculator_clone/calculator_button.dart';
import 'package:redmi_calculator_clone/calculator_operation_button.dart';
import 'package:redmi_calculator_clone/calculator_provider.dart';
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
            Consumer<CalculatorProvider>(
                builder: (context, calculatorProvider, child) {
              return CurrentEquationRow(
                currentEquation: calculatorProvider.currentEquation,
                isEqualsClicked: calculatorProvider.isEqualsClicked,
              );
            }),

            // Result Row
            Consumer<CalculatorProvider>(
              builder: ((context, calculatorProvider, child) {
                return ResultText(
                  result: calculatorProvider.answer,
                  isEqualsClicked: calculatorProvider.isEqualsClicked,
                );
              }),
            ),

            // Calculator box
            Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.5),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CalculatorOperationButton(
                          textOnButton: "C",
                          btnTapped: () {
                            Provider.of<CalculatorProvider>(context,
                                    listen: false)
                                .onClearClicked();
                          },
                        ),
                        const CalculatorOperationButton(
                          iconOnButton: Icons.backspace_outlined,
                        ),
                        const CalculatorOperationButton(
                          iconOnButton: Icons.percent,
                          value: "%",
                        ),
                        CalculatorOperationButton(
                          textOnButton: "/",
                          value: "/",
                          btnTapped: () => Provider.of<CalculatorProvider>(
                                  context,
                                  listen: false)
                              .updateEquation("/"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Numberbutton(numberOnButton: "7"),
                        const Numberbutton(numberOnButton: "8"),
                        const Numberbutton(numberOnButton: "9"),
                        CalculatorOperationButton(
                          iconOnButton: Icons.close,
                          value: "*",
                          btnTapped: () => Provider.of<CalculatorProvider>(
                                  context,
                                  listen: false)
                              .updateEquation("*"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Numberbutton(numberOnButton: "4"),
                        const Numberbutton(numberOnButton: "5"),
                        const Numberbutton(numberOnButton: "6"),
                        CalculatorOperationButton(
                          iconOnButton: Icons.remove,
                          value: "-",
                          btnTapped: () => Provider.of<CalculatorProvider>(
                                  context,
                                  listen: false)
                              .updateEquation("-"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Numberbutton(numberOnButton: "1"),
                        const Numberbutton(numberOnButton: "2"),
                        const Numberbutton(numberOnButton: "3"),
                        CalculatorOperationButton(
                          iconOnButton: Icons.add,
                          value: "+",
                          btnTapped: () => Provider.of<CalculatorProvider>(
                                  context,
                                  listen: false)
                              .updateEquation("+"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const CalculatorOperationButton(
                            iconOnButton: Icons.change_circle_outlined),
                        const Numberbutton(numberOnButton: "0"),
                        const Numberbutton(numberOnButton: "."),
                        CalculatorOperationButton(
                          textOnButton: "=",
                          isCircular: true,
                          btnTapped: () {
                            Provider.of<CalculatorProvider>(context,
                                    listen: false)
                                .onEqualsClicked();
                          },
                        ),
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
