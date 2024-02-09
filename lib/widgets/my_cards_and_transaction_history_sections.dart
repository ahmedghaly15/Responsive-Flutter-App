import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/widgets/custom_divider.dart';
import 'package:responsive_adaptive/core/widgets/custom_main_container.dart';
import 'package:responsive_adaptive/widgets/my_cards_section.dart';
import 'package:responsive_adaptive/widgets/transaction_history_section.dart';

class MyCardsAndTransactionHistorySections extends StatelessWidget {
  const MyCardsAndTransactionHistorySections({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomMainContainer(
      child: Column(
        children: <Widget>[
          MyCardsSection(),
          CustomDivider(),
          TransactionHistorySection(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
