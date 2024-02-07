import 'package:flutter/material.dart';
import 'package:responsive_adaptive/widgets/custom_drawer.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}
