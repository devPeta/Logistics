import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/common/white_color_container.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng (10.609319, 7.429504);
class Tracking extends StatelessWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              const SizedBox(height: 8,),
              const GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: currentLocation,
                ),
              ),
              WhiteContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: kSizes.spaceBtwSections,),
                        Text('Your package is on the way!', style: Theme.of(context).textTheme.bodyLarge,),
                        const SizedBox(height: kSizes.spaceBtwItems,),
                        Text('Recipient\'s address', style: Theme.of(context).textTheme.labelMedium,),
                        const SizedBox(height: kSizes.spaceBtwItems/2,),
                        Text('Paul Slithers, SabonTasha, KD', style: Theme.of(context).textTheme.bodyMedium,),
                        const SizedBox(height: 28,),

                        Text('Actions', style: Theme.of(context).textTheme.labelMedium,),
                        const SizedBox(height: kSizes.spaceBtwItems,),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SquareWidgets(text: 'Call\ndriver', icon: Icons.call,),
                            SquareWidgets(text: 'Change\npackage', icon: Icons.route_outlined,),
                            SquareWidgets(text: 'Pay\ndelivery', icon: Icons.payments_sharp,),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],)),
    );
  }
}

class SquareWidgets extends StatelessWidget {
  final String text;
  final IconData icon;
  const SquareWidgets({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFF1fd655),
            style: BorderStyle.solid,
            width: 1,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: const Color(0xFF203020),),
            const SizedBox(height: 12,),
            Text(text, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
