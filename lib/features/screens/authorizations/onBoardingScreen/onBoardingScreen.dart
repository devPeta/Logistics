import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/Utilities/konstant/kTextString.dart';
import 'package:logistic/Utilities/konstant/kImages.dart';

import '../LoginScreen/login_screen.dart';
import '../SignUpScreen/sign_up_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  const SizedBox(height: 100,),
                  Image.asset(kImages.boardingImage, height: 150, width: 100,),
                  const SizedBox(height: kSizes.defaultSpace,),
                  Text(TTexts.onBoardingTitle, style: Theme.of(context).textTheme.headlineLarge,),
                  const SizedBox(height: kSizes.defaultSpace/4,),
                  const Text(TTexts.onBoardingSubTitle, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16,fontWeight: FontWeight.w300,), textAlign: TextAlign.center,),
                  const SizedBox(height: kSizes.defaultSpace/2,),
                  SizedBox(
                    width: double.infinity,
                      child:  ElevatedButton(onPressed: (){
                        Navigator.push( context, MaterialPageRoute( builder: (context) =>
                        const LoginScreen()),
                        );
                      }, child: const Text(TTexts.logIn,
                          style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w500 ),))),
                  const SizedBox(height: kSizes.defaultSpace/8,),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed:(){
                            Navigator.push( context, MaterialPageRoute( builder: (context) =>
                            const SignUpScreen()),
                            );
                          },
                          child: const Text(TTexts.signUp, style: TextStyle( color: Color(0xFF1fd655), fontSize: 16, fontWeight: FontWeight.w500),))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
