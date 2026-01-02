import 'package:flutter/material.dart';

extension LayoutExtensions on Widget {
  Widget padAll([double value = 8.0]) =>
      Padding(padding: EdgeInsetsDirectional.all(value), child: this);

  Widget padStart([double value = 8.0]) =>
      Padding(padding: EdgeInsetsDirectional.only(start: value), child: this);
  Widget padEnd([double value = 8.0]) =>
      Padding(padding: EdgeInsetsDirectional.only(end: value), child: this);

  Widget padBottom([double value = 8.0]) =>
      Padding(padding: EdgeInsetsDirectional.only(bottom: value), child: this);

  Widget padTop([double value = 8.0]) =>
      Padding(padding: EdgeInsetsDirectional.only(top: value), child: this);

  Widget center() => Center(child: this);

  Widget contains() => Container(color: Colors.red, child: this);
  Widget padSymmetric([double value = 20]) => Padding(
    padding: EdgeInsetsDirectional.symmetric(horizontal: value),
    child: this,
  );
  Widget padVertical(double value) => Padding(
    padding: EdgeInsetsDirectional.symmetric(vertical: value),
    child: this,
  );
}

extension EdgeInsetsExtention on BuildContext {
  EdgeInsets spaceAroundAll(double value) {
    return EdgeInsets.all(value);
  }

  EdgeInsetsDirectional spaceHorizontal([double? value]) {
    return EdgeInsetsDirectional.symmetric(horizontal: value ?? 20);
  }

  EdgeInsetsDirectional spaceVertical([double? value]) {
    return EdgeInsetsDirectional.symmetric(vertical: value ?? 20);
  }

  EdgeInsetsDirectional spaceTop(double value) {
    return EdgeInsetsDirectional.only(top: value);
  }

  EdgeInsetsDirectional spaceBottom(double value) {
    return EdgeInsetsDirectional.only(bottom: value);
  }

  EdgeInsetsDirectional spaceStart(double value) {
    return EdgeInsetsDirectional.only(start: value);
  }

  EdgeInsetsDirectional spaceEnd(double value) {
    return EdgeInsetsDirectional.only(end: value);
  }
}