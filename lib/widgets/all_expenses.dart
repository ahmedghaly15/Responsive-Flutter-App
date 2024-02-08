import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/widgets/custom_main_container.dart';
import 'package:responsive_adaptive/widgets/all_expenses_header.dart';
import 'package:responsive_adaptive/widgets/all_expenses_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomMainContainer(
      child: Column(
        children: <Widget>[
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItems(),
        ],
      ),
    );
  }
}
