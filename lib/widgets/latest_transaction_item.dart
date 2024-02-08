import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';
import 'package:responsive_adaptive/models/latest_transaction_model.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({
    super.key,
    required this.latestTransactionInfo,
  });

  final LatestTransactionModel latestTransactionInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(latestTransactionInfo.image),
          title: Text(
            latestTransactionInfo.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            latestTransactionInfo.subTitle,
            style: AppStyles.styleRegular12(context).copyWith(
              color: const Color(0xffAAAAAA),
            ),
          ),
        ),
      ),
    );
  }
}
