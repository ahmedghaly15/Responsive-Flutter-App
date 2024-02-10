import 'package:flutter/material.dart';
import 'package:responsive_adaptive/constants.dart';
import 'package:responsive_adaptive/widgets/income_chart_details_item.dart';

class IncomeChartDetails extends StatelessWidget {
  const IncomeChartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Constants.incomeChartDetails
          .map(
            (e) => IncomeChartDetailsItem(
              incomeChartDetailsInfo: e,
            ),
          )
          .toList(),
    );
  }
}
