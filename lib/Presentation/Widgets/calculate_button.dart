import 'package:bmi_calculator/Presentation/Screens/result_page.dart';
import 'package:bmi_calculator/Presentation/Utils/text_styles.dart';
import 'package:flutter/material.dart';
import '../Utils/Constants.dart';

class CalculateButton extends StatefulWidget {
  final String buttonText;
  const CalculateButton({super.key,required this.buttonText});

  @override
  State<CalculateButton> createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(widget.buttonText=='Calculate'){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResultPage()));
        }else{
          Navigator.pop(context);
        }
      },
      child: Container(
        width: double.maxFinite,
        height: kBottomContainerHeight,
        color: kBottomContainerColour,
          alignment: Alignment.center,
          child: Text(
            widget.buttonText,
            style: AppTextStyle.kTitleTextStyle,
          ),
      ),
    );
  }
}
