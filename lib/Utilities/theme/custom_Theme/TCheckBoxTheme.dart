import 'package:flutter/material.dart';
class TChecKBoxTheme{

  //appCheckBox
  static CheckboxThemeData AppCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)){
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)){
        return Colors.green;
      } else {
        return Colors.transparent;
      }
    }),
  );
}