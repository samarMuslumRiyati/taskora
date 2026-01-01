import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import 'package:taskora/core/config/constants/image_path.dart';
import 'package:taskora/core/config/extensions/layout_extension.dart';

class AppSnackBar extends StatelessWidget {
  final String message;
  final Duration duration;
  final Color backgroundColor;

  const AppSnackBar({
    super.key,
    required this.message,
    this.duration = const Duration(seconds: 2),
    this.backgroundColor = Colors.white,
  });

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
   //     padding: EdgeInsets.zero,
       // behavior: SnackBarBehavior.floating,
        content: Container(
          height: 230,
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                Image.asset(ImagePath.successOk).padStart(50),

                Text(message,style: Theme.of(context).
                textTheme.bodyLarge!.copyWith(fontStyle:
                FontStyle.italic,color: ColorManager.secondary),
                ),
              ],
            )),
        duration: duration,
        backgroundColor: backgroundColor,

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //just for testing in main
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showSnackBar(context);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
