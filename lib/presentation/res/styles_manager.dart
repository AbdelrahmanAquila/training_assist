import 'package:flutter/material.dart';
import 'package:team_m/presentation/res/fonts_manager.dart';

TextStyle _getTextStyle(double fontsize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontsize,
      fontWeight: fontWeight,
      fontFamily: FontConstants.fontFamily,
      color: color);
}

TextStyle getBoldStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

TextStyle getSemiBoldStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}

TextStyle getMediumStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

TextStyle getRegularStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

TextStyle getLightStyle({double fontSize = 12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}
