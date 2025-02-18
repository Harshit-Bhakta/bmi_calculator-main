import 'package:bmi_calculator/Presentation/Widgets/GenderSelection.dart';
import 'package:bmi_calculator/Presentation/Widgets/WeightAndAgeInput.dart';
import 'package:flutter/material.dart';
import '../Widgets/HeightSliderInput.dart';
import '../Widgets/calculate_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GenderSelection(),
          HeightSlider(),
          WeightAndAgeInput(),
          Expanded(child: SizedBox(width: double.maxFinite,)),
          CalculateButton(buttonText: 'Calculate',),
        ],
      ),
    );
  }
}
