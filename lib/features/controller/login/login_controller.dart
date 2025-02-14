import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logistic/common/t_fullscreen_loader.dart';
import 'package:logistic/common/t_loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logistic/features/screens/MyNavigator.dart';

import '../userRepository.dart';
class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  /// Text Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  /// Observables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final rememberMe = true.obs;

  /// Form Key
  final logInFormKey = GlobalKey<FormState>();

  /// ✅ Login Function
  Future<void> loginUser() async {
    if (logInFormKey.currentState!.validate()) {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();

      if ([email, password].any((element) => element.isEmpty)) {
        TLoaders.warningSnackBar(title: 'All fields are required');
        return;
      }

      TFullScreenLoader.openLoadingDialog('Processing your information...');

      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);

        TFullScreenLoader.stopLoading(); // Stop loading before navigation

        TLoaders.successSnackBar(
          title: 'Successful',
          message: 'Welcome back',
        );

        Get.off(() => const MyNavigatorMenu()); // Navigate after stopping the loader
      } on FirebaseAuthException catch (e) {
        TFullScreenLoader.stopLoading(); // Ensure the loader stops on error

        if (e.code == 'weak-password') {
          TLoaders.warningSnackBar(title: 'Password provided is too weak');
        } else if (e.code == 'email-already-in-use') {
          TLoaders.warningSnackBar(title: 'Account already exists');
        } else {
          TLoaders.errorSnackBar(title: 'Login failed: ${e.message}');
        }
      }
    }
  }
}

