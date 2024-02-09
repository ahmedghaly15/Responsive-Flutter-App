import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';
import 'package:responsive_adaptive/models/income_chart_details_model.dart';

class IncomeChartDetailsItem extends StatelessWidget {
  const IncomeChartDetailsItem(
      {super.key, required this.incomeChartDetailsInfo});

  final IncomeChartDetailsModel incomeChartDetailsInfo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: incomeChartDetailsInfo.color,
        radius: 6,
      ),
      title: Text(
        incomeChartDetailsInfo.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        '${incomeChartDetailsInfo.amount}%',
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
