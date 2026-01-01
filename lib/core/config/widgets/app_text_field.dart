import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/config/extensions/layout_extension.dart';



class AppTextField extends StatelessWidget {

  final String hintText;
  final String prefixIcon;
  const AppTextField({Key? key, required this.hintText, required this.prefixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // height: 70,
      width: 320,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            hintText:hintText ,
            prefixIcon: SvgPicture.asset(prefixIcon).padStart(),

          ),


        ),
      ),
    );
  }
}
