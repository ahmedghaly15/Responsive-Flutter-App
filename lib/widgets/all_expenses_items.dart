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
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                if (activeIndex != 0) {
                  activeIndex = 0;
                }
              });
            },
            child: AllExpensesItem(
              index: 0,
              allExpensesInfo: Constants.allExpensesItems[0],
              isActive: activeIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                if (activeIndex != 1) {
                  activeIndex = 1;
                }
              });
            },
            child: AllExpensesItem(
              index: 1,
              allExpensesInfo: Constants.allExpensesItems[1],
              isActive: activeIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                if (activeIndex != 2) {
                  activeIndex = 2;
                }
              });
            },
            child: AllExpensesItem(
              index: 2,
              allExpensesInfo: Constants.allExpensesItems[2],
              isActive: activeIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
}
