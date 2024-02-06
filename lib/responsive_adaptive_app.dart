import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_themes.dart';
import 'package:responsive_adaptive/views/dashboard_view.dart';

class ResponsiveAdaptiveApp extends StatelessWidget {
  const ResponsiveAdaptiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.appTheme,
      home: const DashboardView(),
    );
  }
}
