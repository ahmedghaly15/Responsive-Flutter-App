import 'package:flutter/material.dart';
import 'package:responsive_adaptive/constants.dart';
import 'package:responsive_adaptive/widgets/income_chart_details_item.dart';

class IncomeChartDetails extends StatelessWidget {
  const IncomeChartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: Constants.incomeChartDetails.length,
      itemBuilder: (context, index) => IncomeChartDetailsItem(
        incomeChartDetailsInfo: Constants.incomeChartDetails[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
    );
  }
}
