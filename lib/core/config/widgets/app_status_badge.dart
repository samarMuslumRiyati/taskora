import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/config/constants/color_manager.dart';
import '../constants/app_sizes.dart';
import 'app_custom_card.dart';


// Reusable Dashboard Card Widget
class AppStatusBadge extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;


   AppStatusBadge({super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.borderRadius,
    this.boxShadow,

  });



  @override
  Widget build(BuildContext context) {
    return AppCustomCard(
      height: 130,
      width: 160,

      // boxShadow: boxShadow,
      // backgroundColor: backgroundColor,
      color: ColorManager.backgroundCard,
      child:

          Column(

            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(

                  width: 69,
                  height: 46,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(150, 210, 200, 0.2),
                          Color.fromRGBO(255, 255, 255, 0.2),
                        ],),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(BorderRadiusSize.borderRadiusLarge),
                      bottomLeft: Radius.circular(BorderRadiusSize.borderRadiusCircular),
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(icon) )),
          ),
      Text(title,
          textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium!


      ),
      Text( value,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: ColorManager.secondary
          ))
                        
               ]
                     

                ),
              );


  }
}

