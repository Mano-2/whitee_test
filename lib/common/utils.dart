import 'package:flutter/material.dart';

const scaleCoefficient = 926;
FontWeight? weight;
TextStyle getRegularTextStyle(
    {required Color color,
    required double fontSize,
    required double height,
    required weight}) {
  return TextStyle(
    fontWeight: weight,
    color: color,
    fontFamily: 'Regular',
    fontSize: height > scaleCoefficient
        ? height / (scaleCoefficient / fontSize)
        : fontSize,
  );
}
