import 'package:flutter/material.dart';
import 'package:responsive_adaptive/constants.dart';
import 'package:responsive_adaptive/widgets/drawer_item.dart';

class DrawerItemsSliverListView extends StatefulWidget {
  const DrawerItemsSliverListView({super.key});

  @override
  State<DrawerItemsSliverListView> createState() =>
      _DrawerItemsSliverListViewState();
}

class _DrawerItemsSliverListViewState extends State<DrawerItemsSliverListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          setState(() {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          });
        },
        child: DrawerItem(
          drawerItemInfo: Constants.drawerItems[index],
          isActive: activeIndex == index,
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: Constants.drawerItems.length,
    );
  }
}
