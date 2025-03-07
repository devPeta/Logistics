import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistic/Utilities/konstant/kTextStyle.dart';

class TLoaders{
  static hideSnackBar() => ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();


  static customToast({required message}){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const  EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey
          ),
          child: Center(child: Text(message, style: kTextStyle.kTextFieldTextStyle,),),
        ),
      ),
    );
  }

  static successSnackBar({required title, message = '', duration = 3}){
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.green,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 5),
      margin: const  EdgeInsets.all(10),
      icon: const  Icon(Icons.warning_amber,color: Colors.white,),
    );
  }

  static warningSnackBar({required title, message = '', duration = 3}){
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 5),
      margin: const  EdgeInsets.all(10),
      icon: const  Icon(Icons.warning_amber,color: Colors.white,),
    );
  }


  static errorSnackBar({required title, message = '', duration = 3}){
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 5),
      margin: const  EdgeInsets.all(10),
      icon: const  Icon(Icons.warning_amber,color: Colors.white,),
    );
  }
}