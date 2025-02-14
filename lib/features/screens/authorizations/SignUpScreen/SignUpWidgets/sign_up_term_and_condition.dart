import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistic/Utilities/konstant/kTextString.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/features/controller/signup/signup_controller.dart';


class TermAndCondition extends StatelessWidget {
  const TermAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    return Row(
      children: [
        SizedBox(
            width: 24, height: 24,
            child: Obx(() => Checkbox(
                value: controller.privacyPolicyController.value,
                onChanged: (value) => controller.privacyPolicyController.value
                    =!controller.privacyPolicyController.value
                ),
            )),
        const SizedBox(width: kSizes.spaceBtwItems,),
        Text.rich(
          TextSpan(
              children: [
                TextSpan(text: '${TTexts.iAgree} ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: TTexts.privacy, style: Theme.of(context).textTheme.bodySmall!.apply(
                    decoration: TextDecoration.underline
                )),
                TextSpan(text: ' ${TTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: TTexts.termsConditions, style: Theme.of(context).textTheme.bodySmall!.apply(
                    decoration: TextDecoration.underline
                )),
              ]
          ),
        ),

      ],
    );
  }
}

