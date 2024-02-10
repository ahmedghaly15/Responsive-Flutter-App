import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/utils/app_assets.dart';
import 'package:responsive_adaptive/models/drawer_item_model.dart';
import 'package:responsive_adaptive/widgets/drawer_item.dart';
import 'package:responsive_adaptive/widgets/drawer_items_sliver_list.dart';
import 'package:responsive_adaptive/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              image: AppAssets.imagesAvatar3,
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsSliverList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              DrawerItem(
                drawerItemInfo: DrawerIteModel(
                  title: 'Settings',
                  image: AppAssets.imagesSettings,
                ),
              ),
              DrawerItem(
                drawerItemInfo: DrawerIteModel(
                  title: 'Logout Account',
                  image: AppAssets.imagesLogout,
                ),
              ),
              SizedBox(
                height: 48,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
