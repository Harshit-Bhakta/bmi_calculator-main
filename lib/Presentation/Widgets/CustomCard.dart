import 'package:flutter/material.dart';
export '../Utils/text_styles.dart';
export 'package:bmi_calculator/Presentation/Utils/constants.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color color;
  const CustomCard({super.key,required this.child,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: child,
      ),
    );
  }
}
