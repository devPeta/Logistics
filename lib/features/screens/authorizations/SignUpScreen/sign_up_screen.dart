import 'package:flutter/material.dart';
import 'package:logistic/features/screens/authorizations/LoginScreen/login_screen.dart';
import 'SignUpWidgets/sign_up_form.dart';
import 'SignUpWidgets/sign_up_header.dart';
import 'SignUpWidgets/sign_up_term_and_condition.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ///SignUp Header
              const SignUpHeader(),

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
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ///form
                    const SignUpForm(),

                    const SizedBox(height : 8 ),
                    ///Term And Condition
                    const TermAndCondition(),

                    const SizedBox(height : 16 ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Already have an account?', style: Theme.of(context).textTheme.bodySmall,),
                        const SizedBox(width: 4,),
                        TextButton(onPressed: (){
                          Navigator.push( context, MaterialPageRoute( builder: (context) =>
                          const LoginScreen()),
                          );
                        },
                            child: Text('Login', style: Theme.of(context).textTheme.bodySmall,))
                      ],
                    )


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



