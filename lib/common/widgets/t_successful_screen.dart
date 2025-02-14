import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/Utilities/konstant/kTextStyle.dart';
import 'package:lottie/lottie.dart';
class SuccessfulScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final VoidCallback onPressed;


  const SuccessfulScreen({Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              ///Images
              Lottie.asset(image, width: MediaQuery.of(context).size.width * 2 ),
             SizedBox(
                height: kSizes.spaceBtwSections,
              ),

              ///TitleAndSubTitle
              Text(title, style: kTextStyle.kTitle, textAlign: TextAlign.center,),
              const SizedBox(height: kSizes.spaceBtwItems,),
              Text(subTitle, style: kTextStyle.kSubTitle, textAlign: TextAlign.center,),
              const SizedBox(height: kSizes.spaceBtwSections,),


              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Continue'),
                ),
              ),

              const SizedBox(height: kSizes.spaceBtwSections,),

            ],
          ),
        ),
      ),
    );
  }
}