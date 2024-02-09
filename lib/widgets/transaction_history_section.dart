import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';
import 'package:responsive_adaptive/widgets/transaction_history_header.dart';
import 'package:responsive_adaptive/widgets/transaction_history_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(height: 16),
        const TransactionHistoryListView(),
      ],
    );
  }
}
