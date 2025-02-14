import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kTextStyle.dart';
class SuccessScreen extends StatelessWidget {
  final VoidCallback onPressed;
  const SuccessScreen({Key? key,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.verified_outlined, color: Color(0xFF1fd655), size: 48,),
                const SizedBox(height: 8,),
                const Text('Your account successfully created!', style: kTextStyle.kTitle,),
                const SizedBox(height: 4,),
                const Text('your account has been successfully created, unleash the joy of seamless delivery online.',
                style: kTextStyle.kSubTitle,),
                const SizedBox(height: 4,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text('Continue',),
                  ),
                ),
                const SizedBox(height: 4,),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: onPressed,
                    child: const Text('Resend Email',),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
