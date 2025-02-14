import 'package:flutter/material.dart';
class TTElevatedButtonTheme{
  static final AppElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: const Color(0xFF1fd655),
      backgroundColor: const Color(0xFF1fd655),
      disabledBackgroundColor: const Color(0xFF1fd655),
      disabledForegroundColor: const Color(0xFF1fd655),
      side: const BorderSide(color: Color(0xFFFFFFFF)),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      textStyle: const TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w500 ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

  );
}