import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/common/t_app_bar.dart';
import '../../../../../common/blue_color_container.dart';
import '../../../../../common/green_color_container.dart';
import '../../../../../common/white_color_container.dart';
class SendingPackageTable extends StatefulWidget {
  const SendingPackageTable({Key? key}) : super(key: key);

  @override
  State<SendingPackageTable> createState() => _SendingPackageTableState();
}

class _SendingPackageTableState extends State<SendingPackageTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            LemonGreenContainer(
              child: Column(
                      children: [
                      ///AppBar Container
                      const TAppBAr(
                      title: Text('Sending Package',
                      style:TextStyle( color: Color(0xFFFFFFFF), fontSize: 20, fontWeight: FontWeight.bold,),
                      ),
                      ),
                      const SizedBox(height: kSizes.spaceBtwItems,),

                      ///LightBlue Container
                      LightBlueContainer(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Form(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: kSizes.spaceBtwItems,),
                                        Text('Recipient\'s details',  style: Theme.of(context).textTheme.bodyLarge,),
                                        const SizedBox(height: kSizes.spaceBtwItems/2,),

                                        ///Name and Surname
                                        Text('Name and Surname', style: Theme.of(context).textTheme.labelMedium,),
                                        const SizedBox(height: 2,),
                                        const TextField(
                                          style: TextStyle(
                                            color: Color(0xFF023202),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.symmetric(horizontal: 18)
                                          ),
                                        ),

                                        ///PhoneNo
                                        const SizedBox(height: kSizes.spaceBtwItems/4,),
                                        Text('Phone number', style: Theme.of(context).textTheme.labelMedium,),
                                        const SizedBox(height: 2,),
                                        const TextField(
                                          style: TextStyle(
                                            color: Color(0xFF023202),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.symmetric(horizontal: 18),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),

                                        ///Email
                                        const SizedBox(height: kSizes.spaceBtwItems/4,),
                                        Text('Email address', style: Theme.of(context).textTheme.labelMedium,),
                                        const SizedBox(height: 2,),
                                        const TextField(
                                          style: TextStyle(
                                            color: Color(0xFF023202),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.symmetric(horizontal: 18)
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            const SizedBox(height: kSizes.spaceBtwSections,),

                            ///White Container
                            WhiteContainer(child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: kSizes.spaceBtwItems),
                                  Text('Extra Services',  style: Theme.of(context).textTheme.bodyMedium,),
                                  const SizedBox(height: kSizes.spaceBtwItems),

                                  ///Shopping Items
                                  const Shopping(price: 'Home delivery', cost: '\$10.0'),
                                  const SizedBox(height: 2,),
                                  const Shopping(price: 'Insurance', cost: '\$30.0'),
                                  const SizedBox(height: 2,),
                                  const Shopping(price: 'Fragile package', cost: '\$20.0'),
                                  const SizedBox(height: 2,),
                                  const Shopping(price: 'Super fast delivery', cost: '\$40.0'),
                                  const SizedBox(height: kSizes.spaceBtwSections,),
                                  const SizedBox(height: kSizes.spaceBtwItems,),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(onPressed: (){},
                                        child: const Text('Send Package',
                                          style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w500 ),)),
                                  ),
                                  const SizedBox(height: kSizes.spaceBtwSections,),
                                ],
                              ),
                            ),
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



// Items(name: 'Home delivery', price: 10.0),
// Items(name: 'Insurance', price: 30.0),
// Items(name: 'Fragile package', price: 20.0),
// Items(name: 'Super fast delivery', price: 40.0),




class Shopping extends StatefulWidget {
  final String price;
  final String cost;
  const Shopping({Key? key, required this.price, required this.cost}) : super(key: key);

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  bool checkbox1Value = false;
  bool checkbox2Value = false;
  bool checkbox3Value = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.price, style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600
          ),),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.cost, style: const TextStyle(
                  color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w600
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
