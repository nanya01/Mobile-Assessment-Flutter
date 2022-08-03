import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/font_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/styles.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17.0),
          borderSide: const BorderSide(color: ColorManager.white)),
    ),
    textTheme: TextTheme(
        bodyLarge:
            getBoldStyle(color: ColorManager.white, fontSize: FontSize.s39_5),
        headline1: getMediumStyle(
            color: ColorManager.black400, fontSize: FontSize.s26),
        bodyText1: getLightStyle(color: ColorManager.black400, fontSize: 18)),
  );
}
