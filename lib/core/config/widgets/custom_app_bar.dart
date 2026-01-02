import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/extensions/layout_extension.dart';

import '../constants/app_strings.dart';

class CustomAppBar extends StatelessWidget {

final String userName;
  final String image;

  final String icon1;
  final String icon2;
  const CustomAppBar({super.key, required this.image, required this.icon1, required this.icon2, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AppBar(
        backgroundColor:Colors.transparent,
        leading: CircleAvatar(
          minRadius: 36,
          child: Image.asset(image),
        ),
        title: Text('${AppStrings.hello} $userName'),
        titleTextStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.w500,
          color: ColorManager.textDarkBlue
        ),

        elevation: 0.0,
        //shadowColor: Colors.amber,

        actions: [
          SvgPicture.asset(icon1,height: AppSizes.iconSizeMedium,).padEnd(5),
          SvgPicture.asset(icon2,height: AppSizes.iconSizeMedium,)
        ],


      ),
    ).padSymmetric(10);

  }
}
