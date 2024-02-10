import 'package:flutter/material.dart';
import 'package:responsive_adaptive/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_adaptive/widgets/income_section.dart';
import 'package:responsive_adaptive/widgets/my_cards_and_transaction_history_sections.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardsAndTransactionHistorySections(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
