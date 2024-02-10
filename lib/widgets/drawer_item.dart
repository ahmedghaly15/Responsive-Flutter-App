import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive/core/utils/app_styles.dart';
import 'package:responsive_adaptive/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemInfo,
    this.isActive = false,
  });

  final DrawerIteModel drawerItemInfo;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemInfo.image),
      title: FittedBox(
        // Used FittedBox to avoid constrains on the Text widget
        // Used BoxFit.scaleDown to make Text widget scale down to fit the constraints
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItemInfo.title,
          style: isActive
              ? AppStyles.styleBold16(context)
              : AppStyles.styleMedium16(context),
        ),
      ),
      trailing: isActive
          ? Container(
              width: 3.27,
              color: const Color(0xff4eb7f2),
            )
          : null,
    );
  }
}
