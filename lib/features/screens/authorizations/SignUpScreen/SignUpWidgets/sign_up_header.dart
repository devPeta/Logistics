import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/common/widgets/kSpacingStyles.dart';
class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: kSpacingStyle.paddingWithAppBarHeightBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New here!', style: Theme.of(context).textTheme.headlineLarge,),
            const SizedBox(height: 2),
            Text('Let\'s create your account', style: Theme.of(context).textTheme.headlineSmall,),
          ],
        ),
      ),
    );
  }
}

