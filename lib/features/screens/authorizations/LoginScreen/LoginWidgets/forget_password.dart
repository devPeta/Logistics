import 'package:flutter/material.dart';
import 'package:logistic/features/screens/authorizations/Forget%20Password/forget_password.dart';
import '../../../../../Utilities/konstant/kTextString.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextButton(onPressed: (){
          Navigator.push( context, MaterialPageRoute( builder: (context) =>
          const ForgetPasswordScreen()),
          );
        },
            child: const Text(TTexts.forgotPassword,
              style: TextStyle(color: Color(0xFF023020), fontSize: 16,fontWeight: FontWeight.w300,),)
        ),
      ],
    );
  }
}

