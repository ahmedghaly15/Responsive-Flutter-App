import 'package:flutter/material.dart';
import 'package:responsive_adaptive/constants.dart';
import 'package:responsive_adaptive/widgets/drawer_item.dart';

class DrawerItemsSliverList extends StatefulWidget {
  const DrawerItemsSliverList({super.key});

  @override
  State<DrawerItemsSliverList> createState() => _DrawerItemsSliverListState();
}

class _DrawerItemsSliverListState extends State<DrawerItemsSliverList> {
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
