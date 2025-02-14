import 'package:flutter/material.dart';
import 'package:logistic/Utilities/konstant/kImages.dart';

const activeColor = Color(0xFF023020);
const inactiveColor = Colors.grey;

class RectangularContainerWidgets extends StatefulWidget {
  final String packageSize;
  final String packageProduct;
  final String packageCost;
  const RectangularContainerWidgets({
    super.key, required this.packageSize,
    required this.packageProduct,
    required this.packageCost,
  });
  @override
  State<RectangularContainerWidgets> createState() => _RectangularContainerWidgetsState();
}

class _RectangularContainerWidgetsState extends State<RectangularContainerWidgets> {

  Color textColor = inactiveColor;
  Color imgPathsColor = inactiveColor;
  Color borderColor = inactiveColor;

  ///Update Color


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          textColor = activeColor;
          imgPathsColor = activeColor;
          borderColor = activeColor;
        });
      },
      onDoubleTap: (){
        setState(() {
          textColor = inactiveColor;
          imgPathsColor = inactiveColor;
          borderColor = inactiveColor;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            border: Border.all(
              color: borderColor,
              width: 2,
              style: BorderStyle.solid,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 8,),
              ColorFiltered(
                  colorFilter: ColorFilter.mode(imgPathsColor, BlendMode.srcIn),
                  child: Image.asset(kImages.package2, color:Colors.grey, height: 46, width: 32,)),
              const SizedBox(height: 4,),
              Text(widget.packageSize, style: TextStyle(color: textColor, fontWeight: FontWeight.w700, fontSize: 16),),
              const SizedBox(height: 2,),
              Text(widget.packageProduct, style:  TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 12),),
              const SizedBox(height: 4,),
              Text(widget.packageCost, style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 14),),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}

