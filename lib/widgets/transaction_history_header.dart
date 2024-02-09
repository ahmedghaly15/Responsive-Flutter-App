import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xff4EB7F2),
            textStyle: AppStyles.styleMedium16(context),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 16,
            ),
            minimumSize: Size.zero,
          ),
          onPressed: () {},
          child: const Text('See All'),
        ),
      ],
    );
  }
}
