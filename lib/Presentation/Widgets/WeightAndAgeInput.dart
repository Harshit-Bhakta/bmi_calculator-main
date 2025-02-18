import 'package:bmi_calculator/Presentation/Widgets/CustomCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Presentation/Utils/weight_or_age.dart';

class WeightAndAgeInput extends StatefulWidget {
  const WeightAndAgeInput({super.key});

  @override
  State<WeightAndAgeInput> createState() => _WeightAndAgeInputState();
}

class _WeightAndAgeInputState extends State<WeightAndAgeInput> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        WeightAndAgeCard(weightOrAge: WeightOrAge.weight,),
        WeightAndAgeCard(weightOrAge: WeightOrAge.age,)
      ],
    );
  }
}

class WeightAndAgeCard extends StatefulWidget {
  final WeightOrAge weightOrAge;
  const WeightAndAgeCard({
    super.key,required this.weightOrAge,
  });

  @override
  State<WeightAndAgeCard> createState() => _WeightAndAgeCardState();
}

class _WeightAndAgeCardState extends State<WeightAndAgeCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomCard(
          color: kActiveCardColour,
          child: Column(
            children: [
              Text(widget.weightOrAge==WeightOrAge.weight?'Weight':'Age'),
              RichText(
                text: TextSpan(
                    text: widget.weightOrAge==WeightOrAge.weight?weight.toString():age.toString(),
                    style: AppTextStyle.kValueTextStyle,
                  children: [
                    TextSpan(
                      text: widget.weightOrAge==WeightOrAge.weight?'kg':'Y',
                      style: AppTextStyle.kLabelTextStyle,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildPlusMinusButton(false),
                  const SizedBox(width: 15,),
                  buildPlusMinusButton(true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  CircleAvatar buildPlusMinusButton(bool plusMinus) {
    return CircleAvatar(
                  backgroundColor: kInactiveButtonColour.withOpacity(0.4),
                  child: IconButton(
                    icon: Icon(
                      plusMinus==false?Icons.remove:Icons.add,
                    ),
                    onPressed: (){
                      setState(() {
                        if(widget.weightOrAge==WeightOrAge.weight){
                          if(plusMinus==false){weight-=1;}
                          else{weight+=1;}
                        }else{
                          if(plusMinus==false){age-=1;}
                          else{age+=1;}
                        }
                      });
                    },
                  ),
                );
  }
}
