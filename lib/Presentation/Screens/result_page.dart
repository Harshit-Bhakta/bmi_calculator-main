import 'package:bmi_calculator/Presentation/Utils/text_styles.dart';
import 'package:bmi_calculator/Presentation/Widgets/calculate_button.dart';
import 'package:bmi_calculator/Presentation/Widgets/result_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Result',
                style: AppTextStyle.kTitleTextStyle,
              ),
            ],
          ),
          const ResultCard(),
          const Expanded(child: SizedBox(width: double.maxFinite,)),
          const CalculateButton(buttonText: 'Re-Calculate')
        ],
      ),
    );
  }
}
