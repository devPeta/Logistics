import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/Utilities/validator/kValidator.dart';
import 'package:logistic/features/controller/forgetpassword/forgetpasswordcontroller.dart';
import 'package:logistic/features/screens/authorizations/Forget%20Password/Sent.dart';
import 'package:get/get.dart';
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color:  Colors.transparent,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Kindly, provide the following details to recover your account',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                textAlign: TextAlign.center,),
                const SizedBox(height: 12,),
               Form(
                  key: controller.forgetPasswordFormKey,
                    child: Column(
                  children: [
                    TextFormField(
                      controller: controller.email,
                      validator: (value) => KValidator.validateEmail(value),
                      style: const TextStyle(
                            color: Color(0xFF023202),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                      ),
                      decoration: const InputDecoration(
                        label: Text('Enter your email'),
                        prefixIcon: Icon(Icons.mail),
                      ),
                    ),
                    const SizedBox(
                      height: kSizes.spaceBtwItems,
                    ),
                    const TextField(
                      style: TextStyle(
                        color: Color(0xFF023202),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        label: Text('Enter your phone-number'),
                        prefixIcon: Icon(Icons.mail),
                      ),
                    ),
                    const SizedBox(
                      height: kSizes.spaceBtwItems,
                    ),
                  ],
                )),
                const SizedBox(height: 12,),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: ()=> controller.sendPasswordResetEmail(),
                      child: const Text('Done', style: TextStyle( color: Color(0xFF1fd655), fontSize: 16, fontWeight: FontWeight.w500),)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
