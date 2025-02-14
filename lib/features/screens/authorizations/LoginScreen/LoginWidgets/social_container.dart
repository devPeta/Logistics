import 'package:flutter/material.dart';
class SocialContainer extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  const SocialContainer({
    super.key, required this.image, required this.width, required this.height, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFFFFFFF)),
          borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(onPressed: onPressed,
          icon: Image(
              width: width,
              height: height,
              image: AssetImage(image))),
    );
  }
}
