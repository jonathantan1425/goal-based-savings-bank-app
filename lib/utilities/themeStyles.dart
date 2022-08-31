import 'package:app/utilities/themeColors.dart';
import 'package:flutter/material.dart';

class ThemeStyles {
  static TextStyle primaryTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle subtitle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w300,
    color: ThemeColors.kSecondaryColor,
  );

  static TextStyle cardDetails = TextStyle(
    fontSize: 16.0,
    color: ThemeColors.kbBackgroundColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle cardMoney = TextStyle(
    fontSize: 20.0,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  static TextStyle tagText = TextStyle(
    fontStyle: FontStyle.italic,
    color: ThemeColors.kThirdColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle otherDetailsPrimary = TextStyle(
    fontSize: 16.0,
    color: Colors.black,
  );

  static TextStyle otherDetailsSecondary = TextStyle(
    fontSize: 12.0,
    color: Colors.grey,
  );
}
