import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/config/router/routes_names.dart';

class Router {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
    case RoutersName.onboardingScreen:
      // right now return Container until i create onBaording screen
      return MaterialPageRoute(builder: (_)=> Container());
  }
  return null;
}}