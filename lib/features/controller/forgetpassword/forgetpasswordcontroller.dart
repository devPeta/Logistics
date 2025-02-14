import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logistic/common/network_manager.dart';
import 'package:logistic/common/t_fullscreen_loader.dart';
import 'package:logistic/common/t_loaders.dart';
import 'package:logistic/data/respositories/authentication/authentication_repository.dart';
import 'package:logistic/features/screens/authorizations/Forget%20Password/Sent.dart';

class ForgetPasswordController extends GetxController{
  static ForgetPasswordController get instance => Get.find();

  ///Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();


  /// Send Reset Password Email
  sendPasswordResetEmail() async{
    try {
      //Start Loading
      TFullScreenLoader.openLoadingDialog('Processing your request...');

      //Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //form Validation
      if(!forgetPasswordFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }
      
      //Send Email to reset Password
      
      //Removed Loader
      TFullScreenLoader.stopLoading();
      
      //Show Success Screen
      TLoaders.successSnackBar(title: 'Email Sent', message: 'Email Link Sent to Reset your password');

      //Redirect to ResetPassword Screen
      Get.to(()=> const SentPage());
    } catch (e) {}
  }


  resendPasswordResetEmail(String email) async {
    try {
      //Start Loading
      TFullScreenLoader.openLoadingDialog('Processing your request...');

      //Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }


      //Removed Loader
      TFullScreenLoader.stopLoading();

      //Show Success Screen
      TLoaders.successSnackBar(title: 'Email Sent', message: 'Email Link Sent to Reset your password');

      //Redirect to ResetPassword Screen
      Get.to(()=> const SentPage());
    } catch (e) {}
  }
}