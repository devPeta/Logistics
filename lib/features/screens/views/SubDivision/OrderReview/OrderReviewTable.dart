import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';

import 'package:logistic/common/t_app_bar.dart';
import 'package:logistic/features/screens/personalifications/HomePage/home_page.dart';

class LiveTrackingTable extends StatefulWidget {
  const LiveTrackingTable({Key? key}) : super(key: key);

  @override
  State<LiveTrackingTable> createState() => _OrderReviewTableState();
}

class _OrderReviewTableState extends State<LiveTrackingTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                const SizedBox(height: kSizes.spaceBtwItems,),
                TAppBAr(
                  title: Text('Tracking', style: Theme.of(context).textTheme.headlineLarge,),
                ),
            const SizedBox(height: kSizes.spaceBtwItems,),
                const HeaderContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: kSizes.spaceBtwSections/4,),
                    CardLocation(),
                    SizedBox(height: kSizes.spaceBtwSections,),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class CardLocation extends StatefulWidget {
  const CardLocation({
    super.key,
  });

  @override
  State<CardLocation> createState() => _CardLocationState();
}

class _CardLocationState extends State<CardLocation> {
  List codeTicket = [
    "1111 2222 2333 4533",
    "2334 2692 2338 4533",
    "1227 2222 5566 4533",
    "1257 3345 5566 1568",
  ];

  List statusSendingReceiving = [
    "Sending",
    "Receiving",
    "Sending",
    "Sending",
  ];

  List dateFrom = [
    "3 July, 2023",
    "4 Aug, 2023",
    "13 Aug, 2023",
    "03 Sept, 2023",
  ];


  List dateTo = [
    "13 July, 2023",
    "11 Aug, 2023",
    "19 Aug, 2023",
    "13 Sept, 2023",
  ];


  List locationTO = [
    "Kaduna",
    "Abuja",
    "Abia",
    "Kano",
  ];

  List locationFrom = [
    "Lagos",
    "Porthacourt",
    "Zamfara",
    "Edo",
  ];

  List status = [
    "On the way to the recipient\'s location",
    "Waiting for receipt to be pick",
    "Package was registered",
    "Sending",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
        width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
    borderRadius:  BorderRadius.circular(10),
    ),
      child: Container(
        width: 335,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            ///Icon And Code Ticket
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.swipe_left_alt_outlined, color: Color(0xFF023020),),
                    const SizedBox(width: 4,),
                    Text(codeTicket[index], style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),

                ///Sending Or Receiving Status
                Row(
                  children: [
                    Text(statusSendingReceiving[index], style: Theme.of(context).textTheme.labelMedium,)
                  ],
                ),
              ],
            ),
            const SizedBox(height: kSizes.spaceBtwItems,),


            ///DateTO and DateFrom
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dateFrom[index], style: Theme.of(context).textTheme.labelSmall,),
                Text(dateTo[index], style: Theme.of(context).textTheme.labelSmall,),
              ],
            ),
            const SizedBox(height: 4,),

            ///LocationTo And LocationFrom
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(locationTO[index], style: Theme.of(context).textTheme.bodySmall,),
              Text(locationFrom[index], style: Theme.of(context).textTheme.bodySmall,),
            ],
          ),
            const SizedBox(height: kSizes.spaceBtwSections + 10,),


            ///Status
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(status[index], style: Theme.of(context).textTheme.labelMedium,),
            ],
          ),
          ],
        ),
      ),
      ),
    ),
        ),
    );
  }
}


