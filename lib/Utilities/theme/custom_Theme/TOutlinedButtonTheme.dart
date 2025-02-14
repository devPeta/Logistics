import 'package:flutter/material.dart';

class TOutlinedButtonTheme{

  static final AppOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      disabledBackgroundColor: Colors.white,
      disabledForegroundColor: Colors.white,
      side: const BorderSide(color: Color(0xFF1fd655),),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
      textStyle: const TextStyle( color: Color(0xFF1fd655), fontSize: 16, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}