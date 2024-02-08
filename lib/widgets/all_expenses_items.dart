import 'package:flutter/material.dart';
import 'package:responsive_adaptive/constants.dart';
import 'package:responsive_adaptive/widgets/all_expenses_item.dart';

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
