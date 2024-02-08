import 'package:flutter/material.dart';
import 'package:responsive_adaptive/widgets/all_expenses.dart';
import 'package:responsive_adaptive/widgets/custom_drawer.dart';
import 'package:responsive_adaptive/widgets/quick_invoice.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            children: <Widget>[
              SizedBox(height: 40),
              AllExpenses(),
              SizedBox(height: 24),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
