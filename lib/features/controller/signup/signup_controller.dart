import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logistic/common/t_fullscreen_loader.dart';
import 'package:logistic/common/t_loaders.dart';
import 'package:logistic/features/screens/MyNavigator.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Text Controllers
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();

  /// Observables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;

  /// Form Key
  final signupFormKey = GlobalKey<FormState>();

  /// ✅ Registration Function
  Future<void> registerUser() async {
    if (signupFormKey.currentState!.validate()) {
      final firstName = firstNameController.text.trim();
      final lastName = lastNameController.text.trim();
      final username = userNameController.text.trim();
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      final phoneNumber = phoneNumberController.text.trim();

      if ([firstName, lastName, username, email, password, phoneNumber]
          .any((element) => element.isEmpty)) {
        TLoaders.warningSnackBar(title: 'All fields are required');
        return;
      }

      TFullScreenLoader.openLoadingDialog('Processing your information...');

      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        TLoaders.successSnackBar(
          title: 'Registered Successfully',
          message: 'Your account has been created! Please verify your email.',
        );

        Get.off(() => MyNavigatorMenu());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          TLoaders.warningSnackBar(title: 'Password provided is too weak');
        } else if (e.code == 'email-already-in-use') {
          TLoaders.warningSnackBar(title: 'Account already exists');
        } else {
          TLoaders.errorSnackBar(title: 'Registration failed: ${e.message}');
        }
      } finally {
        TFullScreenLoader.stopLoading();
      }
    }
  }
}