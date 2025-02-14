import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/Utilities/konstant/kTextString.dart';
import 'package:logistic/common/t_app_bar.dart';
import 'package:logistic/common/widgets/t_shimmer.dart';
import 'package:logistic/features/controller/userController.dart';
import 'package:logistic/features/screens/personalifications/HomePage/HomePageWidgets/Table.dart';
import '../../../../common/blue_color_container.dart';
import '../../../../common/white_color_container.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
             HeaderContainer(
                child: Column(
                  children: [
                    const SizedBox(height: kSizes.spaceBtwItems/4,),
                    ///AppBar Text
                    const home_appbar(),

                    ///SpaceBtwItems
                    const SizedBox(height: kSizes.spaceBtwItems,),


                    ///Light Blue Container
                    LightBlueContainer(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: kSizes.spaceBtwSections,),

                            ///Track Your Package Text
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                              child: Text(TTexts.trackHomePackage, style: Theme.of(context).textTheme.bodyLarge,),
                            ),
                            const SizedBox(height: 4,),

                            ///Enter your package tracking number Text
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                              child: Text(TTexts.trackingHomeNumber, style: Theme.of(context).textTheme.labelMedium,),
                            ),
                            const SizedBox(height: 24,),

                            ///TextField Tracking Number
                            const Padding(
                              padding: EdgeInsets.only(left: 16.0, right: 16.0),
                              child: Form(
                                  child: Column(
                                    children: [
                                      TextField(
                                        style: TextStyle(
                                          color: Color(0xFF023202),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: 'Enter tracking number',
                                          suffixIcon: Icon(Icons.search),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                            const SizedBox(height: kSizes.spaceBtwSections,),

                            ///White Container
                            const WhiteContainer(
                                child: Column(
                                  children: [
                                    SizedBox(height: kSizes.spaceBtwSections,),
                                    Padding(
                                      padding: EdgeInsets.all(32.0),
                                      ///Table Widget
                                      child: TableWidgets(),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                    ),
                    ],
                ),
             ),
          ],
        ),
      ),
    );
  }
}

class home_appbar extends StatelessWidget {
  const home_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return  TAppBAr(
      leadingIcon: Icons.person,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            ///Adding a shimmer loader
            if (controller.profileLoading.value) {
              return const TShimmerEffect(width: 80, height: 15 );
            }
            return Text(controller.user.value.lastName, style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 20,
              fontWeight: FontWeight.bold,),
            );
          }),

          const Text('B2B Customer',
            style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 14, fontWeight: FontWeight.bold,),
          ),
              ],
      ),
    );
  }
}


class HeaderContainer extends StatelessWidget {
  final Widget child;
  const HeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      color: const Color(0xFF1fd655),
      width: double.infinity,
      child: child,
    );
  }
}
