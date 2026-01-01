import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/config/extensions/layout_extension.dart';
import 'package:taskora/core/config/extensions/sized_box_extention.dart';

import '../constants/app_sizes.dart';
import '../constants/color_manager.dart';


class AppTaskListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color color;
  final String trialingText;

   AppTaskListTile({
    super.key,
     required this.title,
     required this.subTitle,
     required this.color, required this.trialingText,

  });

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.zero,
      height: 65,
      width: 336,
      decoration: BoxDecoration(
        color:  Color.fromRGBO(150, 210, 200, 0.2),
        borderRadius: BorderRadius.circular(BorderRadiusSize.borderRadiusXLarge),
      ),
      child: Directionality(

        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            Container(
              width: 12,
              height: double.infinity,
              decoration: BoxDecoration(
                color: color,

                ),
              ),


           8.width,

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      letterSpacing: -0.34,
                      color: ColorManager.textDark,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      letterSpacing: -0.32,
                      color: ColorManager.textGrey,
                    ),
                  ),
                ],
              ),
            ),

            // Trailing button
            Container(
              height: 30,
              width: 77,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromRGBO(244, 194, 122, 0.20),
              borderRadius: BorderRadius.circular(BorderRadiusSize.borderRadiusXLarge),
              ),
              child: Text(
                trialingText,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: ColorManager.redColor),
              ),
            ).padEnd(26),
          ],
        ),
      ),
    );
  }
}
