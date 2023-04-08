import 'package:flutter/material.dart';

class Numberbutton extends StatelessWidget {
  const Numberbutton({super.key, required this.numberOnButton});

  final String numberOnButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Clicked")));
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
