import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/color_manager.dart';

class AppFloatingButton extends StatelessWidget {
  const AppFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 52,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorManager.secondary,
      ),
      child: InkWell(
        child: Center(
          child: Text(
            '+',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: ColorManager.textLight,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
