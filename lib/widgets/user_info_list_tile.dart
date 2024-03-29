import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title, subtitle, image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: FittedBox(
          // Used FittedBox to avoid constrains on the Text widget
          // Used BoxFit.scaleDown to make Text widget scale down to fit the constraints
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          // Used FittedBox to avoid constrains on the Text widget
          // Used BoxFit.scaleDown to make Text widget scale down to fit the constraints
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
