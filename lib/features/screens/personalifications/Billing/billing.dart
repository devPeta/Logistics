import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/common/green_color_container.dart';
import 'package:logistic/common/t_app_bar.dart';
import 'package:logistic/common/white_color_container.dart';
import 'package:logistic/Utilities/konstant/kImages.dart';

import '../../../../common/blue_color_container.dart';
class Billing extends StatelessWidget {
  const Billing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kSizes.spaceBtwSections,),
              // const Padding(
              //   padding: EdgeInsets.all(16.0),
              //   child: WhiteContainer(
              //     child: Padding(
              //       padding: EdgeInsets.all(8.0),
              //       child: Column(
              //         children: [
              //           ///PackageCard
              //           CardLemonGreenContainer(),
              //
              //           SizedBox(height: kSizes.spaceBtwItems,),
              //
              //           ///GreenContainer
              //           GreenContainer(),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              //
              InvoiceAndSeeAllText(),

              ///InvoiceList
              InvoiceList(),

            ],
          ),
        ),
      ),
    );
  }
}

class InvoiceAndSeeAllText extends StatelessWidget {
  const InvoiceAndSeeAllText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Invoices', style: Theme.of(context).textTheme.labelLarge,),
            Text('See all', style: Theme.of(context).textTheme.labelMedium,),
          ],
        ),
      ],
    );
  }
}

class GreenContainer extends StatelessWidget {
  const GreenContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF023020),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('23,000', style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),),
              Text('3', style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),),
              Text('15\%', style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),),
            ],
          ),
          SizedBox(height: 4,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Credit', style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),),
              Text('Items to be paid', style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),),
              Text('Discount', style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),),
            ],
          )
        ],
      ),
    );
  }
}

class CardLemonGreenContainer extends StatelessWidget {
  const CardLemonGreenContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LightBlueContainer(
        child: Column(
      children: [
        const SizedBox(height: kSizes.spaceBtwSections,),
        Padding(padding: const EdgeInsets.all(16),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
         crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Image.asset(kImages.creditCard, color: const Color(0xFF023020), height: 24,),
                const SizedBox(width: 8,),
                Text('PackageBank', style: Theme.of(context).textTheme.bodySmall,),
              ],
            ),
            const SizedBox(height: kSizes.spaceBtwSections * 3,),
            Text('0000 1111 2222 3333 4444', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),)
      ],
    ));
  }
}


class InvoiceList extends StatefulWidget {
  const InvoiceList({Key? key}) : super(key: key);

  @override
  State<InvoiceList> createState() => _InvoiceListState();
}

class _InvoiceListState extends State<InvoiceList> {

  List invoiceText = [
    'Invoice_01.pdf',
    'Invoice_02.pdf',
    'Invoice_03.pdf',
    'Invoice_04.pdf',
    'Invoice_05.pdf',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ///Icon And Invoice Note
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///Constant Icon + Text
            Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.event_note_outlined, color: Color(0xFF1fd655), size: 12,),
          const SizedBox(width: 4,),
          Text(invoiceText[index], style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16
          ),),
                  ],
            ),

            ///Download IconButton
            IconButton(onPressed: (){}, icon: const Icon(Icons.download, color: Colors.grey, size: 24,))
                  ],
                  ),
                ],
               ),
    );
  }
}
