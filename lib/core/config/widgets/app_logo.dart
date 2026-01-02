import 'package:flutter/cupertino.dart';
import '../constants/image_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImagePath.appLogo,fit: BoxFit.fill,);
  }
}
