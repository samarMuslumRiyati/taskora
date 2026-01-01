import 'package:flutter/material.dart';

import 'core/config/theme/light_theme.dart';

void main() {
  runApp(taskora());
}

class taskora extends StatelessWidget {
  const taskora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,

      );
  }}

