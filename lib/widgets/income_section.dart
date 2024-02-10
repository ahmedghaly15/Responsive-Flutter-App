import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/widgets/custom_main_container.dart';
import 'package:responsive_adaptive/widgets/income_section_body.dart';
import 'package:responsive_adaptive/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomMainContainer(
      child: Column(
        children: <Widget>[
          IncomeSectionHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
