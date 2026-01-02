import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';

class AppCustomCard extends StatelessWidget {
  final double height;
  final double width;
  final double? borderWidth;
  final Color? borderColor;
  final Widget child;
  final Color color;

  // Shadow properties (all required if you want a shadow)
  final int? shadowR;
  final int? shadowG;
  final int? shadowB;
  final double? shadowOpacity;
  final double? shadowBlur;
  final Offset? shadowOffset;

  const AppCustomCard({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    required this.color,
    this.shadowR,
    this.shadowG,
    this.shadowB,
    this.shadowOpacity,
    this.shadowBlur,
    this.shadowOffset,
    this.borderWidth,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          width: borderWidth ?? 0,
          color: borderColor ?? Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(BorderRadiusSize.borderRadiusSmall),
        // Only apply shadow if ALL shadow values are provided
        boxShadow: (shadowR != null &&
            shadowG != null &&
            shadowB != null &&
            shadowOpacity != null &&
            shadowBlur != null &&
            shadowOffset != null)
            ? [
          BoxShadow(
            color: Color.fromRGBO(
              shadowR!,
              shadowG!,
              shadowB!,
              shadowOpacity!,
            ),
            blurRadius: shadowBlur!,
            offset: shadowOffset!,
          ),
        ]
            : null,
      ),
      child: child,
    );
  }
}
