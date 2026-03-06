import 'package:flutter/material.dart';
import 'package:simple_calculator_app/features/calculator/presentation/screen/simple_calculator.dart';
void main() {
  runApp(
    const SimpleCalculatorApp(),
  );
}
class SimpleCalculatorApp extends StatelessWidget {
  const SimpleCalculatorApp({super.key});
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SimpleCalculator(),
        );
      }
  }