import 'package:flutter/material.dart';
import 'package:logistic/Utilities/devices/TDevices.dart';
class TAppBAr extends StatelessWidget implements PreferredSizeWidget{
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final  List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const TAppBAr({Key? key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 8,),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow ? IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_circle_left_outlined))
            : leadingIcon!= null ? IconButton(onPressed: leadingOnPressed,
            icon: Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: IconButton(onPressed: (){}, icon: Icon(leadingIcon, color: const Color(0xFF023020),)))) : null,
        title: title,
        actions: actions,
      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDevices.getAppBarHeight());
}
