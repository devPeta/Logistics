import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kImages.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:get/get.dart';
import 'package:logistic/features/controller/login/login_controller.dart';
import 'package:logistic/features/screens/authorizations/LoginScreen/LoginWidgets/social_container.dart';

class socialButtons extends StatelessWidget {
  const socialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SocialContainer(
          image: kImages.facebook,
          width: kSizes.iconSm,
          onPressed: () {},
          height: kSizes.iconSm,),
        SizedBox(width: 24,),
        SocialContainer(
          image: kImages.google,
          width: kSizes.iconSm,
          height: kSizes.iconSm,),
      ],
    );
  }
}
