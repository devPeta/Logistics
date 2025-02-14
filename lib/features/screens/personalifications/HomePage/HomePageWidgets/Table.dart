import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kImages.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';
import 'package:logistic/features/screens/views/SubDivision/Billing/BillingTable.dart';
import 'package:logistic/features/screens/views/SubDivision/OrderReview/OrderReviewTable.dart';
import 'package:logistic/features/screens/views/SubDivision/PackageTracking/PackageTable.dart';
import 'package:logistic/features/screens/views/SubDivision/SendingPackage/SendingPackageTable.dart';

class TableWidgets extends StatelessWidget {
  const TableWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.symmetric(inside: const BorderSide( width: 0.5,
          color: Colors.green,
          style: BorderStyle.solid
      ),
          outside: BorderSide.none),
      children: [
        TableRow(
            children: [
              TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(kImages.bus2, color: const Color(0xFF023020), height: 40,),
                        const SizedBox(height: kSizes.spaceBtwItems,),
                        TextButton(onPressed: (){
                          Navigator.push( context, MaterialPageRoute( builder: (context) =>
                          const SendingPackageTable()),
                          );
                        }, child: const Text('Send Package',
                          style: TextStyle( color: Color(0xFF023020), fontSize: 16, fontWeight: FontWeight.w700 ),))
                      ],
                    ),
                  )),
              TableCell(child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(kImages.package2, color: const Color(0xFF023020), height: 40,),
                    const SizedBox(height: kSizes.spaceBtwItems,),
                    TextButton(onPressed: (){
                      Navigator.push( context, MaterialPageRoute( builder: (context) =>
                      const PackageTable()),
                      );
                    }, child: const Text('My Package',
                      style: TextStyle( color: Color(0xFF023020), fontSize: 16, fontWeight: FontWeight.w700 ),))
                  ],
                ),
              )),
            ]
        ),
        TableRow(
            children: [
              TableCell(child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Image.asset(kImages.location2, color: const Color(0xFF023020), height: 40,),
                    const SizedBox(height: kSizes.spaceBtwItems,),
                    TextButton(onPressed: (){
                      Navigator.push( context, MaterialPageRoute( builder: (context) =>
                      const LiveTrackingTable()),
                      );
                    }, child: const Text('Live Tracking',
                      style: TextStyle( color: Color(0xFF023020), fontSize: 16, fontWeight: FontWeight.w700 ),))
                  ],
                ),
              )),
              TableCell(child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Image.asset(kImages.billing2, color: const Color(0xFF023020), height: 40,),
                    const SizedBox(height: kSizes.spaceBtwItems,),
                    TextButton(onPressed: (){
                      Navigator.push( context, MaterialPageRoute( builder: (context) =>
                      const BillingTable()),
                      );
                    }, child: const Text('Billing',
                      style: TextStyle( color: Color(0xFF023020), fontSize: 16, fontWeight: FontWeight.w700 ),))
                  ],
                ),
              )),
            ]
        ),
      ],
    );
  }
}