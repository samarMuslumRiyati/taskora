import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/extensions/layout_extension.dart';
import 'package:taskora/core/config/widgets/app_container.dart';

class CustomInfoCard extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomInfoCard({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: .spaceEvenly,
       children: [
         AppContainer(
           borderRadius: BorderRadiusSize.borderRadiusXLarge,
           height: 50, width: 200, color: ColorManager.secondary,
           child: Center(child: Text(text1,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: ColorManager.textLight))),

         ),AppContainer(
             borderRadius: BorderRadiusSize.borderRadiusXLarge,
           borderColor: ColorManager.redColor,

             height: 50, width: 200, color: ColorManager.backgroundGreyColor,
             child: Center(child: Text(text2,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: ColorManager.redColor),))).padStart(13)
       ],
      ),
    ).padSymmetric(13);
  }
}
