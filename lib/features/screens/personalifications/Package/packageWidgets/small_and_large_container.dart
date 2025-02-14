import 'package:flutter/material.dart';
import 'package:logistic/features/screens/personalifications/Package/packageWidgets/rectangular_container.dart';

class SmallAndLargeContainer extends StatelessWidget {
  const SmallAndLargeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RectangularContainerWidgets(packageSize: 'Small Package',
          packageProduct: '20 * 60 * 40 cm',
          packageCost: '\$30',),
        SizedBox(width: 8,),
        RectangularContainerWidgets(packageSize: 'Large Package',
          packageProduct: '50 * 60 * 40 cm',
          packageCost: '\$60',),
      ],
    );
  }
}