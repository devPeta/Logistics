import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kTextStyle.dart';
import 'package:logistic/common/widgets/kSpacingStyles.dart';
import 'package:logistic/features/controller/signup/verify_email_controller.dart';
import 'package:logistic/features/screens/authorizations/LoginScreen/login_screen.dart';
import 'package:get/get.dart';
class VerifyEmailScreen extends StatelessWidget {
  final String? email;
  const VerifyEmailScreen({Key? key, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=> const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: kSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.email, size: 38, color: Color(0xFFffffff),),
              const SizedBox(height: 6,),
              Text('Verify Email', style:Theme.of(context).textTheme.headlineLarge,),
              const SizedBox(height: 2,),
              Text('Kindly, check your mail $email',
                style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 16,fontWeight: FontWeight.w300,),
                textAlign: TextAlign.center,),
              const SizedBox(height: 4,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.checkEmailVerificationStatus(),
                      child: const Text(' Continue',  style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w500 ),)
                  )
              ),
              const SizedBox(height: 2,),
              SizedBox(
                  width: double.infinity,
                  child:OutlinedButton(
                      onPressed: () {},
                      child:const Text('Resend email',
                          style: TextStyle( color: Color(0xFF1fd655), fontSize: 16, fontWeight: FontWeight.w500)
                      )
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
