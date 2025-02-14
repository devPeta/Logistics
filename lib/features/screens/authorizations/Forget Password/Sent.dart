import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/features/controller/forgetpassword/forgetpasswordcontroller.dart';
import 'package:logistic/features/screens/authorizations/Forget%20Password/SuccessfullySent.dart';
import 'package:logistic/features/screens/authorizations/LoginScreen/login_screen.dart';
class SentPage extends StatelessWidget {
  const SentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Change Password',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
              ),

              const SizedBox(
                height: 2,
              ),

              const Text('Enter your new password',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,),

              const SizedBox(
                height: kSizes.spaceBtwItems,
              ),

              const Form(child: Column(
                children: [
                  TextField(
                    style:TextStyle(
                      color: Color(0xFF023202),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    decoration: InputDecoration(
                      label: Text('Enter your password'),
                      prefixIcon: Icon(Icons.power_input_outlined),
                      suffixIcon: IconButton(onPressed: null,
                        icon:Icon(Icons.visibility_off),),
                    ),
                    obscureText: true,
                  ),
                ],
              )),
             const SizedBox(height: 18,),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: ()=> Get.offAll(()=> const LoginScreen()),
                    child: const Text('Save Password', style: TextStyle( color: Color(0xFF1fd655), fontSize: 16, fontWeight: FontWeight.w500),)
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: ()=> ForgetPasswordController.instance.resendPasswordResetEmail,
                    child: const Text('Resend Email', style: TextStyle( color: Color(0xFF1fd655), fontSize: 16, fontWeight: FontWeight.w500),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
