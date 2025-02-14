import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kTextStyle.dart';

class TAnimationLoaderWidget extends StatelessWidget {

  final String text;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  const TAnimationLoaderWidget({Key? key,
    required this.text,
    this.showAction = false,
    this.actionText,
    this.onActionPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Display Lottie Animation
          const SizedBox(height: 20),

          // Display Text
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 20),
          showAction
              ? SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: onActionPressed,
              child: Text(actionText!, style: kTextStyle.kSubTitle,),
            ),
          )
          : const SizedBox(),
        ],
      ),
    );
  }
}
