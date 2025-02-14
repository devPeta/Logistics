// import 'dart:js_interop';
//
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:logistic/Utilities/exceptions/firebase_exceptions.dart';
// import 'package:logistic/Utilities/exceptions/format_exceptions.dart';
// import 'package:logistic/Utilities/exceptions/platform_exceptions.dart';
// import 'package:logistic/data/respositories/user/userModel.dart';
// class UserRepository extends GetxController{
//   static UserRepository get instance => Get.find();
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//
//   ///Function to save user data to firebase
//   Future<void> saveUserRecord(UserModel user) async {
//     try{
//       await _db.collection("Users").doc(user.id).set(user.toJson());
//     } on FirebaseException catch (e){
//       throw TFirebaseExceptions(e.code).message;
//     } on FormatException catch(_) {
//       throw const TFormatExceptions();
//     } on PlatformException catch (e) {
//       throw TPlatformExceptions(e.code).message;
//     } catch (e){
//       throw 'Something went wrong. Please try again';
//     }
//   }
//
//   /// Function to Fetch User details based on User ID.
//   /// Function to update user data in FireStore.
// }