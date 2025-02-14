import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistic/Utilities/konstant/kColors.dart';

class TFullScreenLoader{

  static void openLoadingDialog( String text, ){
    showDialog(
        context: Get.overlayContext!,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: kColors.kLightChatueGreenBackground,
              width: double.infinity,
              height: double.infinity,
              child: const Center(
                   child:  CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white), // Customize the color here
                    ),
                ),
              ),
            )
    );
  }

  //Stop loading
    static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}