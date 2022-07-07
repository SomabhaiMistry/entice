import 'package:flutter/material.dart';

const String chewy_regular = "chewy_Regular";


Text ChewyRegular(String text, double size, Color color) {
  return Text(
    text,
    softWrap: true,
    style: TextStyle(
      fontSize: size,
      fontFamily: chewy_regular,
      color: color,
      letterSpacing: 0.5,
    ),
  );
}