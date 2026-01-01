import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/config/widgets/app_custom_card.dart';


class AppDashboardCard extends StatelessWidget {
  final String text;
  final Color color;
  const AppDashboardCard({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return
    AppCustomCard(height: 49, width: 326,  color: color,child: Text(text));
    
  }
}
