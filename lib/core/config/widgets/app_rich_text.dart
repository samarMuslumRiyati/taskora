import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/color_manager.dart';

class AppRichText extends StatelessWidget {
  final String textSpan1;
  final String textSpan2;

  const AppRichText({super.key, required this.textSpan1, required this.textSpan2});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: textSpan1,
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
          color: ColorManager.textGreyCustom,
        ),
        children: [
          TextSpan(
            text: textSpan2,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: ColorManager.primary500,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {

              },
          ),
        ],
      ),
    );
  }
}
