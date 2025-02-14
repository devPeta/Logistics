import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
class SendingFromAndToForm extends StatelessWidget {
  const SendingFromAndToForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sending From', style: Theme.of(context).textTheme.labelMedium,),
          const TextField(
            style: TextStyle(
              color: Color(0xFF023202),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),

          const SizedBox(height: kSizes.spaceBtwItems/2,),

          Text('Sending To', style: Theme.of(context).textTheme.labelMedium,),
          const TextField(
            style: TextStyle(
              color: Color(0xFF023202),
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),

          const SizedBox(height: kSizes.spaceBtwItems,),
        ],
      ),
    ));
  }
}