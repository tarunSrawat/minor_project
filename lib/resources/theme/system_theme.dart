import 'package:flutter/material.dart';
import 'package:minor_project/resources/managers/color_manager.dart';

class SystemTheme {
  static ThemeData dark() {
    return ThemeData(
      fontFamily: 'Satoshi',
      scaffoldBackgroundColor: Colors.black45,
      textTheme: ThemeData().textTheme,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    );
  }

  static ThemeData light() {
    return ThemeData(
      fontFamily: 'Satoshi',
      textTheme: ThemeData().textTheme,
      scaffoldBackgroundColor: ColorManager.white,
    );
  }
}
