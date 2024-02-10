import 'package:flutter/material.dart';
import 'package:responsive_adaptive/constants.dart';
import 'package:responsive_adaptive/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Constants.transactionHistoryItems
          .map(
            (e) => TransactionHistoryItem(
              transactionHistoryInfo: e,
            ),
          )
          .toList(),
    );
  }
}
