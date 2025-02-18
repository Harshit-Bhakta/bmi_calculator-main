import 'package:flutter/material.dart';
int height=170,weight=60,age=18;

const kBottomContainerHeight = 100.0;
const kBottomContainerColour = Color(0xFFEA1556);
const kActiveCardColour = Color(0xFF1D1E33);
const kInactiveCardColour = Color(0xFF111328);
const kInactiveButtonColour = Color(0xFF8D8E98);
const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

SliderThemeData kHeightSliderTheme(BuildContext context) =>
    SliderTheme.of(context).copyWith(
      inactiveTrackColor: const Color(0xFF8D8E98),
      activeTrackColor: Colors.white,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
      thumbColor: const Color(0xFFEB1555),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 25.0),
      overlayColor: const Color(0x1fEB1555),
    );