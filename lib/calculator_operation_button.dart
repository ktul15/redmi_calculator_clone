import 'package:flutter/material.dart';

class CalculatorOperationButton extends StatelessWidget {
  const CalculatorOperationButton(
      {super.key,
      this.textOnButton,
      this.iconOnButton,
      this.isCircular,
      this.value,
      this.btnTapped});

  final String? textOnButton;
  final IconData? iconOnButton;
  final bool? isCircular;
  final String? value;
  final Function? btnTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => btnTapped!(),
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
