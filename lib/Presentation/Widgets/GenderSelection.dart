import 'package:flutter/material.dart';
import '../Utils/gender.dart';
import 'CustomCard.dart';
Gender selectedGender=Gender.none;

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildGenderCard(Gender.male),
        buildGenderCard(Gender.female),
      ],
    );
  }

  Expanded buildGenderCard(Gender gender) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: (){
              setState(() {
                gender==Gender.male?selectedGender=Gender.male:selectedGender=Gender.female;
              });
            },
            child:CustomCard(
              color: selectedGender==gender?kActiveCardColour:kInactiveCardColour,
              child: Column(
                children: [
                  Icon(
                    gender==Gender.male?Icons.male:Icons.female,
                    size: 80,
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    gender==Gender.male?'Male':'Female',
                    style: AppTextStyle.kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
