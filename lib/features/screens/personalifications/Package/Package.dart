import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/common/blue_color_container.dart';
import 'package:logistic/common/green_color_container.dart';
import 'package:logistic/common/t_app_bar.dart';
import 'package:logistic/common/white_color_container.dart';
import 'package:logistic/features/screens/personalifications/Package/packageWidgets/continue_button.dart';
import 'package:logistic/features/screens/personalifications/Package/packageWidgets/sending_from_and_to_form.dart';
import 'package:logistic/features/screens/personalifications/Package/packageWidgets/small_and_large_container.dart';
class Package extends StatelessWidget {

  const Package({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            LemonGreenContainer(child: Column(children: [
              const TAppBAr(
                title: Text('Sending Package'),
              ),
              const SizedBox(height: kSizes.spaceBtwItems,),
              LightBlueContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: kSizes.spaceBtwItems/2,),

                    ///Basic Information Text
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('Basic information', style: Theme.of(context).textTheme.bodyLarge,),
                    ),

                    ///Sending From And To Form
                    const SendingFromAndToForm(),
                    const SizedBox(height: kSizes.spaceBtwItems,),


                    ///White Container
                    WhiteContainer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              const SizedBox(height: 12,),

                              ///Package Size Text
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('Package size', style: Theme.of(context).textTheme.bodyLarge,),
                              ),
                              const SizedBox(height: 12,),

                              ///Small And Large Container
                              const SmallAndLargeContainer(),
                              const SizedBox(height: 8,),

                              ///Continue Button
                              const ContinueButton(),

                              ///Spacer
                              const SizedBox(height: kSizes.spaceBtwItems/8,),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],))
          ],
        ),
      ),
    );
  }
}




