import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';
import 'package:responsive_adaptive/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const RangeOptions(),
      ],
    );
  }
}
