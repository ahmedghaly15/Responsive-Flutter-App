import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';
import 'package:responsive_adaptive/core/widgets/custom_divider.dart';
import 'package:responsive_adaptive/core/widgets/custom_main_container.dart';
import 'package:responsive_adaptive/widgets/quick_invoice_form.dart';
import 'package:responsive_adaptive/widgets/latest_transaction_items.dart';
import 'package:responsive_adaptive/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomMainContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 24),
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 12),
          const LatestTransactionItems(),
          const CustomDivider(),
          const QuickInvoiceForm(),
        ],
      ),
    );
  }
}
