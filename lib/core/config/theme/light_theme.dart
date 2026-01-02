
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskora/core/config/constants/app_sizes.dart';
import 'package:taskora/core/config/constants/color_manager.dart';




final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: ColorManager.backgroundWhiteColor,
  useMaterial3: true,
  fontFamily: AppFontFamily.tajawalArabicFont,
  colorScheme: ColorScheme.light(primary: Colors.black),
  appBarTheme: AppBarTheme(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,statusBarColor: ColorManager.backgroundWhiteColor,
        systemNavigationBarColor: ColorManager.backgroundWhiteColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      )
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorManager.secondary,
      foregroundColor: ColorManager.textLight,
      elevation: 0,
      padding: EdgeInsets.zero,
      textStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: AppSizes.textSizeSmall,
        color: ColorManager.textLight,
        fontFamily: AppFontFamily.tajawalArabicFont
      ),
      minimumSize: Size(326, 46),
      maximumSize: Size(326, 46),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(BorderRadiusSize.borderRadiusSmall),
        ),
      ),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: TextStyle(
        color: ColorManager.textLight,
        fontSize: AppSizes.textSizeSmall,
        fontWeight: FontWeight.w400,
        fontFamily: AppFontFamily.tajawalArabicFont,
      ),
  ),),


  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: ColorManager.greyDark1Color,
  ),
  dividerTheme: DividerThemeData(color: Colors.grey.shade300),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: ColorManager.backgroundWhiteColor,


    prefixIconConstraints: const BoxConstraints(
      minWidth: AppSizes.textSizeMedium,
      minHeight: AppSizes.textSizeMedium,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    hintStyle: TextStyle(
      color: ColorManager.textFieldColor,
      fontSize: AppSizes.buttonHintText,
      fontWeight: FontWeight.w500,
    ),
    errorStyle: TextStyle(
      color: ColorManager.redColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
     borderSide: BorderSide(color: ColorManager.borderTextField),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
      borderSide: BorderSide(
        color: ColorManager.greyDark1Color,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
     borderSide: BorderSide(color: ColorManager.backgroundWhiteColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
      borderSide: BorderSide(color: ColorManager.secondary),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
      borderSide: BorderSide(color: ColorManager.redColor),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(BorderRadiusSize.borderRadius),
      ),
      borderSide: BorderSide(color: ColorManager.redColor),
    ),
  ),

  textTheme: TextTheme(


    // Title Text Bold
    displayLarge: TextStyle(
      fontSize: 34,

      fontWeight: FontWeight.w700,
    ),

    // XXXL Bold
    displayMedium: TextStyle(
      fontSize: 28,

      fontWeight: FontWeight.w700,
    ),

    // XXXL Regular
    displaySmall: TextStyle(
      fontSize: 12,

      fontWeight: FontWeight.w400,
    ),



    // XXL Bold
    headlineLarge: TextStyle(
      fontSize: 26,

      fontWeight: FontWeight.w700,
    ),

    // XXL Regular
    headlineMedium: TextStyle(
      fontSize: 24,

      fontWeight: FontWeight.w400,
    ),

    // XL Bold
    headlineSmall: TextStyle(
      fontSize: 22,

      fontWeight: FontWeight.w700,
    ),

    // XL Regular
    titleLarge: TextStyle(
      fontSize: 40,

      fontWeight: FontWeight.w400,
    ),

    // XL Light
    titleMedium: TextStyle(
      fontSize: 16,

      fontWeight: FontWeight.w300,
    ),

    // ML Bold
    titleSmall: TextStyle(
      fontSize: 20,

      fontWeight: FontWeight.w700,
    ),

    // ML Regular
    bodyLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
    ),

    // ML Light
    bodyMedium: TextStyle(
      fontSize: 20,

      fontWeight: FontWeight.w300,
    ),

    // L Bold
    bodySmall: TextStyle(
      fontSize: 18,

      fontWeight: FontWeight.w400,
    ),

    // M Regular
    labelLarge: TextStyle(
      fontSize: 16,

      fontWeight: FontWeight.w400,
    ),

    // S Regular
    labelMedium: TextStyle(
      fontSize: 14,

      fontWeight: FontWeight.w700,
      color: ColorManager.textLight,
    ),

    // XS Regular
    labelSmall: TextStyle(
      fontSize: 12,

      fontWeight: FontWeight.w400,
    ),
  ),

);































































// class AppButtonThemes {
//   // ثيم للأزرار العادية
//   static final ButtonStyle normal = ElevatedButton.styleFrom(
//     backgroundColor: ColorManager.secondary,
//     foregroundColor: ColorManager.textLight,
//     elevation: 0,
//     padding: EdgeInsets.zero,
//     textStyle: TextStyle(
//       fontWeight: FontWeight.w700,
//       fontSize: AppSizes.textSizeSmall,
//       color: ColorManager.textLight,
//       fontFamily: AppFontFamily.tajawalArabicFont,
//     ),
//     minimumSize: Size(350, 49),
//     maximumSize: Size(350, 49),
//     // shape: RoundedRectangleBorder(
//     //   borderRadius: BorderRadius.all(
//     //     Radius.circular(12),
//     //   ),
//     // ),
//   );
//
//   // ثيم للأزرار التي تحتوي أيقونة
//   static final ButtonStyle icon = ElevatedButton.styleFrom(
//     backgroundColor: ColorManager.secondary,
//     foregroundColor: ColorManager.textLight,
//     elevation: 2,
//     padding: EdgeInsets.symmetric(horizontal: 16),
//     textStyle: TextStyle(
//       fontWeight: FontWeight.w600,
//       fontSize: AppSizes.textSizeMedium,
//       fontFamily: AppFontFamily.tajawalArabicFont,
//     ),
//     minimumSize: Size(350, 49),
//     maximumSize: Size(350, 49),
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(BorderRadiusSize.borderRadiusCircular),
//     ),
//   );
// }



//class AppTextButtonThemes {
  // ثيم للأزرار العادية
  // static final ButtonStyle yesOrNo = TextButton.styleFrom(
  //   backgroundColor: ColorManager.secondary,
  //   foregroundColor: ColorManager.textLight,
  //   elevation: 0,
  //   padding: EdgeInsets.zero,
  //   textStyle: TextStyle(
  //     fontWeight: FontWeight.w700,
  //     fontSize: AppSizes.textSizeSmall,
  //     color: ColorManager.textLight,
  //     fontFamily: AppFontFamily.tajawalArabicFont,
  //   ),
  //   minimumSize: Size(46, 33),
  //   maximumSize: Size(46, 33),
  //   // shape: RoundedRectangleBorder(
  //   //   borderRadius: BorderRadius.all(
  //   //     Radius.circular(12),
  //   //   ),
  //   // ),
  // );

  // static final ButtonStyle saveOrCancel = ElevatedButton.styleFrom(
  //   backgroundColor: ColorManager.secondary,
  //   foregroundColor: ColorManager.textLight,
  //   elevation: 0,
  //   padding: EdgeInsets.zero,
  //   textStyle: TextStyle(
  //     fontWeight: FontWeight.w700,
  //     fontSize: AppSizes.textSizeSmall,
  //     color: ColorManager.textLight,
  //     fontFamily: AppFontFamily.tajawalArabicFont,
  //   ),
  //   minimumSize: Size(97, 18),
  //   maximumSize: Size(97, 18),
  //   // shape: RoundedRectangleBorder(
  //   //   borderRadius: BorderRadius.all(
  //   //     Radius.circular(12),
  //   //   ),
  //   // ),
  // );

//}






























class AppFontFamily {
  AppFontFamily._(); // private constructor

  static const String tajawalArabicFont = 'Tajawal-Regular';
}


