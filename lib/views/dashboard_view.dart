import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/widgets/responsive_layout.dart';
import 'package:responsive_adaptive/widgets/desktop_dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopDashboardLayout(),
      ),
    );
  }
}