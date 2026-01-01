import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/extensions/layout_extension.dart';

import 'app_elevated_button.dart';

class AppEmptyState extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String textButton;
  const AppEmptyState({super.key,
    required this.image,
    required this.text1,
    required this.text2, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(image,width: 150,height: 150,),
          Text(text1,style: Theme.of(context).textTheme.bodyLarge,).padBottom(16),
          Text(text2,style:  Theme.of(context).textTheme.titleMedium!.copyWith(color: ColorManager.textGrey)).padBottom(16),
          AppElevatedButton(text: textButton, onPressed: (){},),

        ]


      ),
    );
  }
}
