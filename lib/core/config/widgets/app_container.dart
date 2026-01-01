import 'package:flutter/material.dart';


import '../constants/app_sizes.dart';

class AppContainer extends StatelessWidget {

  final double height;
  final double width;
  final double borderRadius;
  final Color color;
  final Color? borderColor;
  final double? borderWidth;
  final Widget child;
  const AppContainer({super.key, required this.height, required this.width,
    this.borderRadius = BorderRadiusSize.borderRadiusSmall, required this.color, required this.child, this.borderColor, this.borderWidth, });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: height,
      width: width,
      decoration: BoxDecoration(

        color: color,
        border: borderColor == null
            ? null
            : Border.all(
          color: borderColor!,



        ),
        borderRadius:  BorderRadius.circular(borderRadius),
    ),
      child: child,
    );
  }
}
