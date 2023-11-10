import 'package:flutter/material.dart';
import 'font_manager.dart';

class SystemText{

  static TextStyle regular({String fontFamily = "", double fontSize = SystemFont.s14, Color color = Colors.black}){
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      fontFamily: fontFamily,
    );
  }

  static TextStyle light({String fontFamily = "", double fontSize = SystemFont.s14, Color color = Colors.black}){
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w300,
      fontFamily: fontFamily,
    );
  }

  static TextStyle bold({String fontFamily = "", double fontSize = SystemFont.s14, Color color = Colors.black}){
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      fontFamily: fontFamily,
    );
  }
}