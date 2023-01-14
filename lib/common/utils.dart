import 'package:flutter/material.dart';

const scaleCoefficient = 926;

TextStyle getRegularTextStyle({
  required Color color,
  required double fontSize,
  required double height,
}) {
  return TextStyle(
    color: color,
    fontFamily: 'Regular',
    fontSize: height > scaleCoefficient
        ? height / (scaleCoefficient / fontSize)
        : fontSize,
  );
}

TextStyle getBoldTextStyle(
    {required Color color, required double fontSize, required double height}) {
  return TextStyle(
    color: color,
    fontFamily: 'Bold',
    fontSize: height > scaleCoefficient
        ? height / (scaleCoefficient / fontSize)
        : fontSize,
  );
}

TextStyle getLeckerliOneTextStyle({
  required Color color,
  required double fontSize,
  required double height,
}) {
  return TextStyle(
    color: color,
    fontFamily: 'LeckerliOne',
    fontSize: height > scaleCoefficient
        ? height / (scaleCoefficient / fontSize)
        : fontSize,
  );
}
