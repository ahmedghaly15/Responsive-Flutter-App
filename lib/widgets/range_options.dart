import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffF1F1F1),
          width: 1,
        ),
      ),
      child: Row(
        children: <Widget>[
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff064061),
          ),
        ],
      ),
    );
  }
}
