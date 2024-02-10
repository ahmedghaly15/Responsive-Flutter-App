import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/size_config.dart';
import 'package:responsive_adaptive/widgets/income_chart.dart';
import 'package:responsive_adaptive/widgets/income_chart_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return screenWidth >= SizeConfig.desktop && screenWidth < 1750
        ? const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 24),
                Expanded(
                  child: IncomeChart(),
                ),
                SizedBox(height: 24),
                IncomeChartDetails(),
              ],
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeChartDetails()),
            ],
          );
  }
}
