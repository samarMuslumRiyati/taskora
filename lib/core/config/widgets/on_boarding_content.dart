import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/app_strings.dart';
import 'package:taskora/core/config/constants/icon_path.dart';
import 'package:taskora/core/config/extensions/layout_extension.dart';
import 'package:taskora/core/config/extensions/sized_box_extention.dart';
import 'package:taskora/core/config/widgets/app_elevated_button.dart';
import 'package:taskora/core/config/widgets/app_icon_elevated_button.dart';

import '../constants/app_sizes.dart';
import '../constants/color_manager.dart';

class OnboardingContent extends StatelessWidget {
  final String onBoardingImg;
  final String onBoardingText1;
  final String onBoardingText2;
  final VoidCallback onPressed;
  final bool icon;

  const OnboardingContent({
    super.key,
    required this.onBoardingImg,
    required this.onBoardingText1,
    required this.onBoardingText2,
    required this.onPressed, required this.icon,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(BorderRadiusSize.borderRadiusOnBoarding),
              bottomRight: Radius.circular(BorderRadiusSize.borderRadiusOnBoarding),
            ),
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            onBoardingImg,
            width: double.infinity,
            height: 404,
            fit: BoxFit.cover,
          ),
        ),
        50.height,
        Text(
          onBoardingText1,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w700,
            color: ColorManager.primary500,
            letterSpacing: -0.4,
          ),
        ),
        21.height,
        Text(
          onBoardingText2,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w700,
            color: ColorManager.textDark,
            letterSpacing: -0.36,
          ),
        ).padBottom(24),

        if (icon)
          AppIconElevatedButton(
            text: AppStrings.next,
            onPressed: onPressed,
            icon: IconPath.arrow,
          )
        else
          AppElevatedButton(text: AppStrings.login, onPressed: () {}),
      ],
    ).padSymmetric(25);
  }
}
