import 'package:flutter/material.dart';

class TAppBarTheme{
  static const ThemeAppBar = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600, color: Colors.black),
  );

}