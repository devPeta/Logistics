import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class TShimmerEffect extends StatelessWidget {

  final double height;
  final double width;
  final double radius;
  final Color? color;

  const TShimmerEffect({Key? key,
    required this.height,
    required this.width,
    this.radius = 15,
    this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade400,
        highlightColor: Colors.grey.shade100,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
          ),
        ));
  }
}