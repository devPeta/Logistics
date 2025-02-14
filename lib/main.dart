// import 'package:flutter/material.dart';
// import 'package:logistic/Utilities/konstant/kColors.dart';
// import 'package:logistic/Utilities/theme/theme.dart';
// import 'package:logistic/bindings/general_bindings.dart';
// import 'package:logistic/data/respositories/authentication/authentication_repository.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
// import 'package:get/get.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:get_storage/get_storage.dart';
//
// Future<void> main() async {
//   //Todo: Add Widgets Binding
//   final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   //Todo: GetX local storage
//   await GetStorage.init();
//   //Todo: Init payment methods
//
//   //Todo: Await Native Splash Screen
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//
//   //Todo : Initialize FireBase
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,)
//       .then(
//         (FirebaseApp value) => Get.put(AuthenticationRepository()),
//   );
//
//   //Todo: Initialize Authentication FireBase
//   //Todo:   Load all the material design, themes, localizations and bindings
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       theme: TTheme.AppTheme,
//      initialBinding: GeneralBindings(),
//      home: const Scaffold(
//        backgroundColor: kColors.kLightGreenBackground,
//        body: Center(
//          child: CircularProgressIndicator(
//            color: Colors.white70,
//          ),
//        ),
//      ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kColors.dart';
import 'package:logistic/Utilities/theme/theme.dart';
import 'package:logistic/data/respositories/authentication/authentication_repository.dart';
import 'package:logistic/features/controller/login/login_controller.dart';
import 'package:logistic/features/controller/userController.dart';
import 'package:firebase_core/firebase_core.dart';
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

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
        (FirebaseApp value) {
      // Register the AuthenticationRepository as a dependency
      Get.put(AuthenticationRepository(), permanent: true);

      // Register other dependencies here
      Get.lazyPut<UserController>(() => UserController(), fenix: true);
      Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    },
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
      home: const Scaffold(
        backgroundColor: kColors.kLightGreenBackground,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}
