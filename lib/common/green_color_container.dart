import 'package:flutter/material.dart';
class LemonGreenContainer extends StatelessWidget {
  final Widget child;
  const LemonGreenContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      color: const Color(0xFF1fd655),
      width: double.infinity,
      child: child,
    );
  }
}
