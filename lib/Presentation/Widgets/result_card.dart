import 'package:bmi_calculator/Presentation/Widgets/CustomCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultCard extends StatefulWidget {
  const ResultCard({super.key});

  @override
  State<ResultCard> createState() => _ResultCardState();
}

class _ResultCardState extends State<ResultCard> {
  late double bmi;
  late String status,tips;
  @override
  void initState() {
    super.initState();
    calculateBMI();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomCard(
        color: kActiveCardColour,
        child: SizedBox(
          width: double.maxFinite,
          height: MediaQuery.sizeOf(context).height*0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  '\n\n$status',
                  style: AppTextStyle.kResultTextStyle,
                ),
              ),
              Text(
                bmi.toStringAsFixed(1),
                style: AppTextStyle.kBMITextStyle,
              ),
              Expanded(
                child: Text(
                  '\n\n$tips',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.kBodyTextStyle,
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }

  void calculateBMI(){
    bmi=weight/((height/100)*(height/100));
    if(bmi<18.5){
      status='Underweight';
      tips='Aim for a diet with adequate calories to gain some weight.';
    }else if(bmi>=18.5 && bmi<25){
      status='Normal Weight';
      tips='You are in good shape, maintain it';
    }else if(bmi>=25 && bmi<30){
      status='Overweight';
      tips='Do some light exercises regularly';
    }else if(bmi>=30 && bmi<35){
      status='Obesity - Class I';
      tips='Regular exercise and a balanced diet, to promote weight loss.';
    }else if(bmi>=35 && bmi<40){
      status='Obesity - Class II ';
      tips=' Consider diet, exercise, and potential medical interventions.';
    }else{
      status='Obesity - Class III';
      tips='Consult healthcare professionals for specialized care';
    }
  }
}
