import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:logistic/common/t_loaders.dart';
import 'package:logistic/common/t_succesful_screen.dart';
import 'package:logistic/data/respositories/authentication/authentication_repository.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  ///Send Email Whenever verify screen appears and Set Timer

  @override
  void onInit(){
    sendEmailVerification();
    sendTimerForAutoRedirect();
    super.onInit();
  }

  ///Send Email Verification Link
  sendEmailVerification() async {
    try {
    await AuthenticationRepository.instance.sendEmailVerification();
    TLoaders.successSnackBar(title: 'Email Sent', message:' Please check your inbox and verify');
    } catch (e){
        TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  ///Timer to automatically redirect on Email Verification
  sendTimerForAutoRedirect() {
    Timer.periodic(
      const Duration(seconds: 1),
            (timer) async {
        await FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if(user?.emailVerified ?? false){
          timer.cancel();
          Get.off(()=> SuccessScreen(
            onPressed: AuthenticationRepository.instance.screenRedirect(),
          )
          );
        }
      },
    );
  }


  ///Manually check if Email Verified
  checkEmailVerificationStatus() {
        final currentUser = FirebaseAuth.instance.currentUser;
        if(currentUser != null &&  currentUser.emailVerified){
          Get.off(()=> SuccessScreen(
            onPressed: AuthenticationRepository.instance.screenRedirect(),
              ),
          );
      }
  }
}


