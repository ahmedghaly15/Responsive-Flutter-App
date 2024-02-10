import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';
import 'package:responsive_adaptive/models/all_expenses_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesInfo,
    required this.index,
    this.isActive = false,
  });

  final AllExpensesModel allExpensesInfo;
  final int index;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4EB7F2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: isActive
            ? Border.all(
                color: const Color(0xff4EB7F2),
                width: 1,
              )
            : Border.all(
                color: const Color(0xffF1F1F1),
                width: 1,
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      isActive ? Colors.white : const Color(0xffF1F1F1),
                  child: Center(
                    child: SvgPicture.asset(allExpensesInfo.image),
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: isActive ? Colors.white : const Color(0xFF064061),
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            // Used FittedBox to avoid constrains on the Text widget
            // Used BoxFit.scaleDown to make Text widget scale down to fit the constraints
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              allExpensesInfo.title,
              style: isActive
                  ? AppStyles.styleSemiBold16(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            // Used FittedBox to avoid constrains on the Text widget
            // Used BoxFit.scaleDown to make Text widget scale down to fit the constraints
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              allExpensesInfo.date,
              style: isActive
                  ? AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            // Used FittedBox to avoid constrains on the Text widget
            // Used BoxFit.scaleDown to make Text widget scale down to fit the constraints
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              '\$${allExpensesInfo.price}',
              style: isActive
                  ? AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
