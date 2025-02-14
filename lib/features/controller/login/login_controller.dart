import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logistic/data/respositories/authentication/authentication_repository.dart';
import 'package:logistic/common/network_manager.dart';
import 'package:logistic/common/t_fullscreen_loader.dart';
import 'package:logistic/common/t_loaders.dart';
import 'package:logistic/features/controller/userController.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logistic/features/screens/MyNavigator.dart';

import '../userRepository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// Variables
  final localStorage = GetStorage();
  final userController = Get.find<UserController>(); // Use Get.find to avoid circular dependencies
  final emailController = TextEditingController();
  final passwordController  = TextEditingController();
  final hidePassword = true.obs;
  final rememberMe = true.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  @override
  void onInit() {
    // email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    // password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  /// ✅ Login Function
  Future<void> loginUser() async {

    // Start Loading
    TFullScreenLoader.openLoadingDialog('Logging you in...');

    // Check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      TFullScreenLoader.stopLoading();
      return;
    }

    if (loginFormKey.currentState!.validate()) {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();

      if ([email, password].any((element) => element.isEmpty)) {
        TLoaders.warningSnackBar(title: 'All fields are required');
        return;
      }

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