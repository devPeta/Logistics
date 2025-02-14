import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/Utilities/konstant/kTextString.dart';
import 'package:logistic/features/screens/authorizations/LoginScreen/LoginWidgets/forget_password.dart';
import 'package:logistic/features/screens/authorizations/LoginScreen/LoginWidgets/login_form.dart';
import 'package:logistic/features/screens/authorizations/LoginScreen/LoginWidgets/login_header.dart';
import 'LoginWidgets/already_have_an_account.dart';
import 'LoginWidgets/vertical_divider_logs.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///Login Header Container
                const LoginHeader(),

                ///Body Container
                Container(
                  width: double.infinity,
                  height: 650,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 32,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ///LoginForm
                       LoginForm(),

                        SizedBox(height: kSizes.iconSm,),

                        //ForgetPassword
                        ForgetPassword(),
                        SizedBox(height: kSizes.spaceBtwItems/4,),

                        //already have an account, Sign Up
                        AlreadyHaveAnAccountSignUp(),
                        SizedBox(height: kSizes.spaceBtwItems,),

                        //Divider
                        VerticalDividerLogs(),
                        SizedBox(height: kSizes.spaceBtwItems/2,),

                        //SocialContainer
                        ///socialButtons(),
                      ],
                    ),
                  ),
                )
              ],
            ),
      ),
    );
  }
}







