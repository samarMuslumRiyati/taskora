import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/extensions/layout_extension.dart';
import 'package:taskora/core/config/widgets/app_container.dart';

class ProfileOptionItem extends StatelessWidget {
  final Color color;
  final String icon;
  final String text1;
  final String text2;

  const ProfileOptionItem({
    super.key,
    required this.color,
    required this.icon,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 123,
      width: 343,
      color: ColorManager.backgroundCardProfile,

      borderRadius: BorderRadiusSize.borderRadiusCircular,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              ...List.generate(3, (index) {
                return Column(
                  mainAxisAlignment: .center,
                  children: [
                    AppContainer(
                      height: 52,
                      width: 66,
                      color: color,
                      child: Center(
                        child: SvgPicture.asset(
                          icon,
                          width: AppSizes.iconSizeBtw,
                          height: AppSizes.iconSizeBtw,
                        ),
                      ),
                    ).padBottom(6).padTop(14),
                    Text(
                      text1,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ColorManager.textDark,
                      ),
                    ),
                    Text(
                      text2,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: ColorManager.textDark,
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
