import 'package:flutter/material.dart';
class TTextTheme{

  static TextTheme AppTextTheme = const TextTheme(
    //HeadLine & Title
    headlineLarge: TextStyle( color: Color(0xFFFFFFFF), fontSize: 28, fontWeight: FontWeight.bold,),
    headlineMedium: TextStyle( color: Color(0xFFFFFFFF), fontSize: 22, fontWeight: FontWeight.bold,),
    headlineSmall: TextStyle( color: Color(0xFFFFFFFF), fontSize: 18, fontWeight: FontWeight.bold,),

    //Specifically for button
    displayLarge: TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.bold,),

    //Body
    bodyLarge: TextStyle(color: Color(0xFF023020), fontSize: 18,fontWeight: FontWeight.w600,),
    bodyMedium: TextStyle(color: Color(0xFF023020), fontSize: 16,fontWeight: FontWeight.w300,),
    bodySmall: TextStyle(color: Color(0xFF023020), fontSize: 12,fontWeight: FontWeight.bold,),

    //label
    labelLarge: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400,),
    labelMedium: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w400,),
    labelSmall: TextStyle(color: Colors.grey, fontSize: 8, fontWeight: FontWeight.bold,),

    //Title
    titleMedium: TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.bold,),
    titleSmall: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12, fontWeight: FontWeight.bold),

  );
}