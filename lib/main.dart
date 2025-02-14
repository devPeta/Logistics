import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kColors.dart';
import 'package:logistic/Utilities/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:logistic/features/screens/authorizations/onBoardingScreen/onBoardingScreen.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // Initialize Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetX local storage
  await GetStorage.init();

  // Preserve native splash screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Run the application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TTheme.AppTheme,
      home: OnBoardingScreen(),
    );
  }
}
