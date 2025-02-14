import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistic/common/network_manager.dart';
import 'package:logistic/common/t_fullscreen_loader.dart';
import 'package:logistic/common/t_loaders.dart';
import 'package:logistic/data/respositories/user/user_respository.dart';
import 'package:logistic/features/controller/userController.dart';

class UpdateNameController extends GetxController{
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  ///Init user Data when Home Screen Appears
  @override
  void onInit(){
    initializeNames();
    super.onInit();
  }

  ///Fetch user record
  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }


  /// Function to update Name
  Future<void> updateUserName() async {
    try{
      //Start Loading
      TFullScreenLoader.openLoadingDialog('We are processing your information...');

      //Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      //Form Validator
      if(!updateUserNameFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }
      
      
      //Update user's first And Last Name in the Firebase Firestore
      Map<String, dynamic> name = {'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim(),
      };
      ///await UserRepository.updateSingleField(name);
      
      //update the Rx User Value
      //userController.user.value.firstName = firstName.text.trim();
      //userController.user.value.lastName = lastName.text.trim();

      //Remove Loader
      TFullScreenLoader.stopLoading();
      
      //Show Success Message
      TLoaders.successSnackBar(title: 'Congratulations', message: 'Your name has been updated.',);
      
      //Move to previous screen
      //Get.off(()=> const ProfileScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'oh Snap', message: e.toString());
    }
  }
 }