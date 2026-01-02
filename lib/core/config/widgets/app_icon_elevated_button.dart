import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class AppIconElevatedButton extends StatelessWidget {
  final String text;
  final onPressed;
   final String  icon;

  const AppIconElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
  });

@override
Widget build(BuildContext context) {
return ElevatedButton.icon(
  icon: SvgPicture.asset(icon),
  onPressed: (){}, label: Text(text),

);
}
}
