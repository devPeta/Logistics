import 'package:flutter/material.dart';
class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(width: double.infinity,child: ElevatedButton(
        onPressed:() {},
        child: const Text('Continue', style: TextStyle( color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.w500 ),),
      ),),
    );
  }
}