import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kImages.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/features/screens/authorizations/LoginScreen/login_screen.dart';

class SuccessfullySent extends StatelessWidget {
  const SuccessfullySent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:  const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(kImages.emoWink, color: Colors.white, height: 100,),
              const SizedBox(
                height: kSizes.fontSizeSm,
              ),
              const Text('Password Changed!!!', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),),
              const SizedBox(
                height: kSizes.iconSm,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.push( context, MaterialPageRoute( builder: (context) =>
                 const LoginScreen()),
                  );
                },
                    child: const Text('Sign', style: TextStyle( color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
