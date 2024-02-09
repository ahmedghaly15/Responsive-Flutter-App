import 'package:flutter/material.dart';
import 'package:responsive_adaptive/constants.dart';
import 'package:responsive_adaptive/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: Constants.transactionHistoryItems.length,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (context, index) => TransactionHistoryItem(
        transactionHistoryInfo: Constants.transactionHistoryItems[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
    );
  }
}
