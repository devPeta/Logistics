import 'package:flutter/material.dart';

import '../../../../../Utilities/konstant/kTextString.dart';
import '../../SignUpScreen/sign_up_screen.dart';
class AlreadyHaveAnAccountSignUp extends StatelessWidget {
  const AlreadyHaveAnAccountSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(TTexts.notAlready, style: Theme.of(context).textTheme.bodySmall,),
        const SizedBox(width: 4,),
        TextButton(onPressed: (){
          Navigator.push( context, MaterialPageRoute( builder: (context) =>
          const SignUpScreen()),
          );
        },
            child: Text(TTexts.signUp, style: Theme.of(context).textTheme.bodySmall,)
        )
      ],
    );
  }
}
