import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/app_strings.dart';
import 'package:taskora/core/config/constants/color_manager.dart';


class CustomTextButton extends StatelessWidget {
  final String text;
  const CustomTextButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: TextButton(

          onPressed: (){}, child: Text(AppStrings.createAcc,style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: ColorManager.secondary),)),
    );
  }
}
