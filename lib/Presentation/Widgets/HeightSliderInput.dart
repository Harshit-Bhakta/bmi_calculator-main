import 'package:bmi_calculator/Presentation/Widgets/CustomCard.dart';
import 'package:flutter/material.dart';


class HeightSlider extends StatefulWidget {
  const HeightSlider({super.key});

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomCard(
        color: kActiveCardColour,
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Text(
                'Height',
                style: AppTextStyle.kLabelTextStyle,
              ),
              heightValue(),
              heightSlider(context),
            ],
          ),
        ),
      ),
    );
  }

  SliderTheme heightSlider(BuildContext context) {
    return SliderTheme(
                data: kHeightSliderTheme(context),
                child: Slider(
                  max: 300,
                  value: height.toDouble(),
                  onChanged: (value){
                    setState(() {
                      height=value.toInt();
                    });
                  },
                )
            );
  }

  RichText heightValue() {
    return RichText(
              text: TextSpan(
                text: height.toString(),
                style: AppTextStyle.kValueTextStyle,
                children: [
                  TextSpan(
                    text: 'cm',
                    style: AppTextStyle.kLabelTextStyle,
                  ),
                ]
              ),
            );
  }
}
