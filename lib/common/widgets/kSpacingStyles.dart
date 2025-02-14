import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kSizes.dart';

class kSpacingStyle{
  //first Container Body
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: kSizes.appBarHeight,
    left: kSizes.spaceBtwItems,
    bottom: kSizes.defaultSpace,
    right: kSizes.spaceBtwItems,
  );

  //Second Container Body
  static const EdgeInsetsGeometry paddingWithAppBarHeightSm = EdgeInsets.only(
    top: kSizes.appBarHeightSm,
    left: kSizes.spaceBtwItems,
    bottom: kSizes.defaultSpace,
    right: kSizes.spaceBtwItems,
  );

  static const EdgeInsetsGeometry paddingWithAppBarHeightBg = EdgeInsets.only(
    top: kSizes.appBarHeight,
    left: kSizes.spaceBtwItems,
    bottom: kSizes.defaultSpace,
    right: kSizes.spaceBtwItems,
  );

}