import 'package:flutter/material.dart';

extension TextStyleExtension on BuildContext {
  //  Title Text Bold
  TextStyle get titleTextBold => Theme.of(this).textTheme.displayLarge!;

  //  XXXL
  TextStyle get xxxlBold => Theme.of(this).textTheme.displayMedium!;

  TextStyle get xxxlRegular => Theme.of(this).textTheme.displaySmall!;

  //  XXL
  TextStyle get xxlBold => Theme.of(this).textTheme.headlineLarge!;

  TextStyle get xxlRegular => Theme.of(this).textTheme.headlineMedium!;

  //  XL
  TextStyle get xlBold => Theme.of(this).textTheme.headlineSmall!;

  TextStyle get xlRegular => Theme.of(this).textTheme.titleLarge!;

  TextStyle get xlLight => Theme.of(this).textTheme.titleMedium!;

  //  ML
  TextStyle get mlBold => Theme.of(this).textTheme.titleSmall!;

  TextStyle get mlRegular => Theme.of(this).textTheme.bodyLarge!;

  TextStyle get mlLight => Theme.of(this).textTheme.bodyMedium!;

  //  L
  TextStyle get lBold => Theme.of(this).textTheme.bodySmall!;

  //  M
  TextStyle get mRegular => Theme.of(this).textTheme.labelLarge!;

  //  S
  TextStyle get sRegular => Theme.of(this).textTheme.labelMedium!;

  //  XS
  TextStyle get xsRegular => Theme.of(this).textTheme.labelSmall!;

}