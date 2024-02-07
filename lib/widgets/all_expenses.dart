import 'package:flutter/material.dart';
import 'package:responsive_adaptive/constants.dart';
import 'package:responsive_adaptive/widgets/all_expenses_header.dart';
import 'package:responsive_adaptive/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: <Widget>[
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItems()
        ],
      ),
    );
  }
}

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({super.key});

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        Constants.allExpensesItems.length,
        (index) => Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                if (activeIndex != index) {
                  activeIndex = index;
                }
              });
            },
            child: AllExpensesItem(
              index: index,
              allExpensesInfo: Constants.allExpensesItems[index],
              isActive: activeIndex == index,
            ),
          ),
        ),
        growable: false,
      ),
    );
  }
}
