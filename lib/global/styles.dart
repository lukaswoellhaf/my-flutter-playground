import 'package:flutter/material.dart';

const LinearGradient gradientRed = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF3868),
    Color(0xFFFFB49A),
  ],
);

const LinearGradient gradientPurple = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF736EFE),
    Color(0xFF62E4EC),
  ],
);

const LinearGradient gradientBlue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF0BA4E0),
    Color(0xFFA9E4BD),
  ],
);

const LinearGradient gradientPink = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF6864),
    Color(0xFFFFB92F),
  ],
);

const categoryText = TextStyle(
  color: secondaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const titleText = TextStyle(
  color: textColorStandard,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const textStandard = TextStyle(
  color: textColorStandard,
  fontSize: 16.0,
);

const textStandardInverted = TextStyle(
  color: textColorStandardInverted,
  fontSize: 16.0,
);

const textErrorStandard = TextStyle(
  color: errorColor,
  fontSize: 13.0,
);

const textButtonText = TextStyle(
    color: secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline
);

const textSoftSmall = TextStyle(
    color: unselectedColor,
    fontSize: 12
);

// Colors
const primaryColor = Color(0xFF212121);
const secondaryColor = Color(0xFFFE88A2);
const backgroundColor = Color(0xFF212121);
const cardColor = Color(0xFF393939);
const buttonColorStandard = Color(0xFFFE88A2);
const textColorStandard = Colors.white;
const textColorStandardInverted = Colors.black;
const unselectedColor= Color(0xB3FFFFFF);
const disabledColor= Color(0x80FFFFFF);
const hintColor= Color(0x80FFFFFF);
const errorColor = Color(0xFFF44336);
const successColor = Color(0xFF4CAF50);
const warningColor = Color(0xFFFF9800);
const infoColor = Color(0xFF2196F3);
const dividerColor = Color(0x80000000);