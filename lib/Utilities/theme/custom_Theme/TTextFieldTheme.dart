import 'package:flutter/material.dart';

class TTextFieldTheme{
  static InputDecorationTheme AppTextFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: const Color(0xFF023020),
    suffixIconColor: const Color(0xFF023020),
    filled: true,
    fillColor: const Color(0xFFDFF2FF),
    labelStyle: const TextStyle(color: Color(0xFF023020), fontSize: 14, fontWeight: FontWeight.w300 ),
    hintStyle: const TextStyle(color: Color(0xFF023020), fontSize: 14, fontWeight: FontWeight.w300 ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Color(0xFF1fd655),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Color(0xFF1fd655),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Color(0xFF1fd655),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.yellow,
      ),
    ),
  );
}