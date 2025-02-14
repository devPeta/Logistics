import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/common/t_app_bar.dart';

import '../../../../../common/blue_color_container.dart';
import '../../../../../common/green_color_container.dart';
import '../../../../../common/white_color_container.dart';
class PackageTable extends StatefulWidget {
  const PackageTable({Key? key}) : super(key: key);

  @override
  State<PackageTable> createState() => _PackageTableState();
}

class _PackageTableState extends State<PackageTable> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              LemonGreenContainer(
                  child: Column(
                    children: [
                      const TAppBAr(
                        title: Text('Tracking Information',
                          style:TextStyle( color: Color(0xFFFFFFFF), fontSize: 20, fontWeight: FontWeight.bold,),),
              ),
                      const Padding(
                          padding: EdgeInsets.all(24),
                      child: WhiteContainer(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: TrackingForm(),
                          )
                      ),
                      ),
                      const SizedBox(height: kSizes.spaceBtwItems,),
                      LightBlueContainer(
                          child:
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: kSizes.spaceBtwSections,),
                            Text('Detailed Information', style: Theme.of(context).textTheme.bodyLarge,),
                            const SizedBox(height: kSizes.spaceBtwSections,),
                            const TitleAndSubTitle(Title: 'Shipping info received by sender',
                                SubTitle: '02/05/2024   11:34am'),
                            const SizedBox(height: kSizes.spaceBtwItems,),
                            const TitleAndSubTitle(Title: 'Parcel received at our depot',
                                SubTitle: '02/05/2024   11:58am'),
                            const SizedBox(height: kSizes.spaceBtwItems,),
                            const TitleAndSubTitle(Title: 'On the way to the recipient\'s city',
                                SubTitle: '02/05/2024   12:08pm'),
                            const SizedBox(height: kSizes.spaceBtwItems,),
                            const TitleAndSubTitle(Title: 'Delivered!',
                                SubTitle: '02/05/2024   12:18pm'),
                            const SizedBox(height: kSizes.spaceBtwSections,),
                            SizedBox(
                                width: double.infinity,
                                child: OutlinedButton(onPressed: (){}, child: const Text('Done',
                                  style: TextStyle( color: Color(0xFF1fd655), fontSize: 16, fontWeight: FontWeight.w500),
                                ),)),
                            const SizedBox(height: kSizes.spaceBtwSections,),

                        ],
                        ),
                      ))
                    ],
                  ),
              ),
          ],
        ),
      ),
    );
  }
}

class TitleAndSubTitle extends StatelessWidget {
  final String Title;
  final String SubTitle;
  const TitleAndSubTitle({
    super.key, required this.Title, required this.SubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.gpp_good_outlined, size: 34,),
        const SizedBox(width: 8,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Title, style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(height: 1,),
            Text(SubTitle, style: Theme.of(context).textTheme.labelSmall,),
          ],
        ),
      ],
    );
  }
}

class TrackingForm extends StatelessWidget {
  const TrackingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Tracking Number
         const SizedBox(height: kSizes.spaceBtwItems/2,),
         Text('Tracking Number', style: Theme.of(context).textTheme.labelSmall,),
         const SizedBox(height: 2,),
         Text('0000 1423 7645', style: Theme.of(context).textTheme.bodySmall,),


          ///Sender
          const SizedBox(height: kSizes.spaceBtwItems/2,),
          Text('Sender', style: Theme.of(context).textTheme.labelSmall,),
          const SizedBox(height: 2,),
          Text('21 Galadima Street, Sabon Tasha, KD',
            style: Theme.of(context).textTheme.bodySmall,),


          ///Receiver
          const SizedBox(height: kSizes.spaceBtwItems/2,),
          Text('Receiver', style: Theme.of(context).textTheme.labelSmall,),
          const SizedBox(height: 4,),
          Text('04 Ahmed Musa Street, Ojulegba, LG',
            style: Theme.of(context).textTheme.bodySmall,),


          ///Weight
          const SizedBox(height: kSizes.spaceBtwItems/2,),
          Text('Weight', style: Theme.of(context).textTheme.labelSmall,),
          const SizedBox(height: 2,),
          Text('3 KG', style: Theme.of(context).textTheme.bodySmall,),


          ///Cost
          const SizedBox(height: kSizes.spaceBtwItems/2,),
          Text('Cost', style: Theme.of(context).textTheme.labelSmall,),
          const SizedBox(height: 2,),
          Text('\$30', style: Theme.of(context).textTheme.bodySmall,),

        ],
      ),
    );
  }
}






