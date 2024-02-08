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
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40, bottom: 32),
                        child: Column(
                          children: <Widget>[
                            AllExpenses(),
                            SizedBox(height: 24),
                            QuickInvoice(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
