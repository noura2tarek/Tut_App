import 'package:flutter/material.dart';
import 'fonts_manager.dart';

//private style method
TextStyle? _getTextStyle(
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  double? height,
) {
  return TextStyle(
    fontFamily: FontsConstants.fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: height,
  );
}

//light Style
TextStyle? getLightStyle({double? fontSize = FontSize.s12, Color? color, double? height}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.light,
    color,
    height,
  );
}

//regular Style
TextStyle? getRegularStyle({double? fontSize = FontSize.s12, Color? color, double? height}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.regular,
    color,
    height,
  );
}

//medium Style
TextStyle? getMediumStyle({double? fontSize = FontSize.s16, Color? color, double? height}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.medium,
    color,
    height,
  );
}

//semi bold Style
TextStyle? getSemiBoldStyle({double? fontSize = FontSize.s16, Color? color, double? height}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.semiBold,
    color,
    height,
  );
}

//bold Style
TextStyle? getBoldStyle({double? fontSize = FontSize.s16, Color? color, double? height}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.bold,
    color,
    height,
  );
}
