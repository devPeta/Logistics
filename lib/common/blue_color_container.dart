import 'package:flutter/material.dart';
class LightBlueContainer extends StatelessWidget {
  final Widget child;
  const LightBlueContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
        color: Color(0xFFDFF2FF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      width: double.infinity,
      child: child,
    );
  }
}