import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleMedium16 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleSemiBold16 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold20 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleRegular12 = TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold24 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleRegular14 = TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleSemiBold18 = TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleBold16 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static TextStyle styleMedium20 = TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
}

/*Using PlatformDispatcher insteadOf MediaQuery
 To Avoid using context
 */

double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;
  double minFont = fontSize * 0.8;
  double maxFont = fontSize * 1.2;

  double responsiveFontSizeRange = responsiveFontSize.clamp(minFont, maxFont);

  return responsiveFontSizeRange;
}

double getScaleFactor() {
  // double currentWidth = MediaQuery.of(context).size.width;

  var platformDispatcher = PlatformDispatcher.instance;
  var physicalWidth = platformDispatcher.views.first.physicalSize.width;
  var devicePixelRatio = platformDispatcher.views.first.devicePixelRatio;
  double currentWidth = physicalWidth / devicePixelRatio;
  if (currentWidth < 800) {
    return currentWidth / 550;
  } else if (currentWidth < 1200) {
    return currentWidth / 1000;
  } else {
    return currentWidth / 1890;
  }
}





//Using MediaQuery
/*double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double minFont = fontSize * 0.8;
  double maxFont = fontSize * 1.2;

  double responsiveFontSizeRange = responsiveFontSize.clamp(minFont, maxFont);

  return responsiveFontSizeRange;
}

double getScaleFactor(BuildContext context) {
  double currentWidth = MediaQuery.of(context).size.width;
  if (currentWidth < 800) {
    return currentWidth / 550;
  } else if (currentWidth < 1200) {
    return currentWidth / 1000;
  } else {
    return currentWidth / 1400;
  }
}*/
