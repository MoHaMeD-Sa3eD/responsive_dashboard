import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle styleRegular16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleMedium16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle styleSemiBold16 = TextStyle(
    color: Color(0xFF064061),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleSemiBold20 = TextStyle(
    color: Color(0xFF064061),
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleRegular12 = TextStyle(
    color: Color(0xFFAAAAAA),
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleSemiBold24 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleRegular14 = TextStyle(
    color: Color(0xFFAAAAAA),
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleBold16 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle styleMedium20 = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
}
double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double minFont = fontSize * 0.8;
  double maxFont = fontSize * 1.2;

  double responsiveFontSizeRange = responsiveFontSize.clamp(minFont, maxFont);

  return responsiveFontSizeRange;
}

double getScaleFactor(BuildContext context) {
  double currentWidth = MediaQuery.of(context).size.width;
  if (currentWidth < 600) {
    return currentWidth / 400;
  } else if (currentWidth < 900) {
    return currentWidth / 700;
  } else {
    return currentWidth / 1000;
  }
}