import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:redmi_calculator_clone/calculator_page.dart';
import 'package:redmi_calculator_clone/calculator_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CalculatorPage(),
      ),
    );
  }
}
