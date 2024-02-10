import 'package:flutter/material.dart';
import 'package:responsive_adaptive/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_adaptive/widgets/custom_drawer.dart';
import 'package:responsive_adaptive/widgets/income_section.dart';
import 'package:responsive_adaptive/widgets/my_cards_and_transaction_history_sections.dart';

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
          child: Padding(
            padding: EdgeInsets.only(top: 40, bottom: 32),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            MyCardsAndTransactionHistorySections(),
                            SizedBox(height: 24),
                            Expanded(child: IncomeSection()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
