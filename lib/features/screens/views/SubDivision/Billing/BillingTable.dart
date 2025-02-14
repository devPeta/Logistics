import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kImages.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/common/blue_color_container.dart';
import 'package:logistic/common/green_color_container.dart';
import 'package:logistic/common/t_app_bar.dart';
import 'package:logistic/common/white_color_container.dart';

class BillingTable extends StatefulWidget {
  const BillingTable({Key? key}) : super(key: key);

  @override
  State<BillingTable> createState() => _BillingTableState();
}

class _BillingTableState extends State<BillingTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                LemonGreenContainer(
                    child: Column(
                      children: [
                        const TAppBAr(
                          title: Text('Order Review',
                            textAlign: TextAlign.center,
                            style:TextStyle( color: Color(0xFFFFFFFF), fontSize: 20, fontWeight: FontWeight.bold,
                            ),
                        ),
                        ),
                        const SizedBox(height: kSizes.spaceBtwItems,),
                        LightBlueContainer(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: kSizes.spaceBtwItems,),
                                ///Check Out Title
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8, bottom: 8),
                                  child: Text('Checkout', style: Theme.of(context).textTheme.bodyLarge,),
                                ),

                                ///Small Package
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Small package', style: Theme.of(context).textTheme.bodySmall,),
                                      Text('\$40', style: Theme.of(context).textTheme.bodySmall,)
                                    ],
                                  ),
                                ),

                                ///Home Delivery
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Home delivery', style: Theme.of(context).textTheme.bodySmall,),
                                      Text('\$20', style: Theme.of(context).textTheme.bodySmall,)
                                    ],
                                  ),
                                ),

                                ///Tax
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Tax', style: Theme.of(context).textTheme.bodySmall,),
                                      Text('\$10', style: Theme.of(context).textTheme.bodySmall,)
                                    ],
                                  ),
                                ),

                                ///Service Fees
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Service fee', style: Theme.of(context).textTheme.bodySmall,),
                                      Text('\$5', style: Theme.of(context).textTheme.bodySmall,)
                                    ],
                                  ),
                                ),

                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Divider(
                                    color: Color(0xFF023030),
                                    thickness: 1,
                                  ),
                                ),

                                ///Total
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Total', style: Theme.of(context).textTheme.bodyLarge,),
                                      Text('\$75', style: Theme.of(context).textTheme.bodyLarge,)
                                    ],
                                  ),
                                ),

                            const SizedBox(
                              height: kSizes.spaceBtwSections,
                            ),
                            WhiteContainer(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: kSizes.spaceBtwItems,
                                      ),
                                      ///Choose Payment Method
                                      Text('Choose payment method', style: Theme.of(context).textTheme.bodyLarge,),
                                      const SizedBox(
                                        height: kSizes.spaceBtwItems,
                                      ),

                                      ///PayPal Payment
                                      const PaymentOption(imgPaths: kImages.payPal, text: 'PayPal',),
                                      const SizedBox(height: 8,),

                                      ///Credit Card
                                      const PaymentOption(imgPaths: kImages.creditCard,text: 'Credit Card',),
                                      const SizedBox(height: 8,),

                                      ///Google Pay
                                      const PaymentOption(imgPaths: kImages.googlePay,text: 'Google Pay',),
                                      const SizedBox(height: 8,),


                                      const SizedBox(
                                        height: kSizes.spaceBtwSections,
                                      ),

                                      ///Shipment Button
                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(onPressed: (){}, child:
                                        const Text('Pay for shipment', style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w500 ),)),
                                      ),

                                      const SizedBox(
                                        height: kSizes.spaceBtwSections,
                                      ),
                                      const SizedBox(
                                        height: kSizes.spaceBtwSections,
                                      ),
                                    ],
                                  ),
                                )),
                              ],
                            ))
                      ],
                    ))

        ],
          ),
        ),
    );
  }
}

class PaymentOption extends StatefulWidget {
  final String imgPaths;
  final String text;
  const PaymentOption({
    super.key, required this.imgPaths, required this.text,
  });

  @override
  State<PaymentOption> createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {

  Color textColor = Colors.grey;
  Color imgPathsColor = Colors.grey;
  Color borderColor = Colors.grey;
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          textColor = const Color(0xFF023020);
          imgPathsColor = const Color(0xFF023020);
          borderColor = const Color(0xFF023020);
        });
      },
      onDoubleTap: (){
        setState(() {
          textColor = Colors.grey;
          imgPathsColor = Colors.grey;
          borderColor = Colors.grey;
        });
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            style: BorderStyle.solid,
            width: 1,
            color: borderColor,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(imgPathsColor, BlendMode.srcIn),
                  child: Image.asset(widget.imgPaths, height: 24, width: 28, )),
              const SizedBox(width: 10,),
              Text(widget.text, style: TextStyle(
                fontSize: 20,
                  fontWeight: FontWeight.bold,
                color: textColor,
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
