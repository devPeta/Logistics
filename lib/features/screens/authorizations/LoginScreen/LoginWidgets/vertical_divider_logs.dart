import 'package:flutter/material.dart';
import '../../../../../Utilities/konstant/kTextString.dart';

class VerticalDividerLogs extends StatelessWidget {
  const VerticalDividerLogs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: Color(0xFF023020), thickness: 0.8, indent: 60, endIndent: 5,),),
        Text(TTexts.orLog, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w200, fontSize: 12),),
        Flexible(child: Divider(color: Color(0xFF023020), thickness: 0.8, indent: 5, endIndent: 60,),)
      ],
    );
  }
}
