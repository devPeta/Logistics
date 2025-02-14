import 'package:flutter/material.dart';
import 'package:logistic/Utilities/theme/custom_Theme/TAppBarTheme.dart';
import 'package:logistic/Utilities/theme/custom_Theme/TCheckBoxTheme.dart';
import 'package:logistic/Utilities/theme/custom_Theme/TTextTheme.dart';

import 'custom_Theme/TElevatedButtonTheme.dart';
import 'custom_Theme/TOutlinedButtonTheme.dart';
import 'custom_Theme/TTextFieldTheme.dart';

class TTheme{
  TTheme._();

  //LightMode ThemeData
  static ThemeData AppTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: TTextTheme.AppTextTheme,
    scaffoldBackgroundColor: const Color(0xFF023020),
    primaryColorLight: const Color(0xFF1fd655),
    elevatedButtonTheme: TTElevatedButtonTheme.AppElevatedButtonTheme,
    appBarTheme:TAppBarTheme.ThemeAppBar,
    checkboxTheme: TChecKBoxTheme.AppCheckBoxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.AppOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.AppTextFieldTheme,
  );
}