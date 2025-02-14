import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logistic/common/network_manager.dart';
import 'package:logistic/common/t_fullscreen_loader.dart';
import 'package:logistic/common/t_loaders.dart';
import 'package:logistic/features/screens/MyNavigator.dart';
import 'package:logistic/features/screens/authorizations/SignUpScreen/verify_email_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  ///variables
  final emailController = TextEditingController();
  final lastNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final userNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final hidePasswordController = true.obs;
  final privacyPolicyController = true.obs;
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();


  // ///Check Internet Connectivity
  // final isConnected = await NetworkManager.instance.isConnected();
  // if(!isConnected)  return;
  // ///Privacy Policy Check
  // // if(!privacyPolicyController.value){
  // //   TLoaders.warningSnackBar(title: 'Accept Privacy Policy',
  // //     message: 'In order to create account, you must have to read and accept the privacy policy'
  // //   );
  // //   return;
  // // }

  /// ✅ Registration Function
  Future<void> registerUser() async {
    if (signupFormKey.currentState!.validate()) {
      final firstName = firstNameController.text.trim();
      final lastName = lastNameController.text.trim();
      final username = userNameController.text.trim();
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      final phoneNumber = phoneNumberController.text.trim();

      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected)  return;

      ///Privacy Policy Check
      if(!privacyPolicyController.value){
        TLoaders.warningSnackBar(title: 'Accept Privacy Policy',
          message: 'In order to create account, you must have to read and accept the privacy policy'
        );
        return;
      }

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
