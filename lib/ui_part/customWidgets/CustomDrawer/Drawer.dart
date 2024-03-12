import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/DrawerListTile/DrawerItemModel.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/DrawerListTile/InActiveDrawerItem.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/UserInfoListTile/UserInfoListTileModel.dart';
import '../../utils/app_images.dart';
import '../DrawerListTile/DrawerItemsListView.dart';
import '../UserInfoListTile/UserInfoListTile.dart';

class DashBoardDrawer extends StatelessWidget {
  const DashBoardDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Card(
              color: const Color(0xFFFAFAFA),
              elevation: 0.2,
              child: UserInfoListTile(
                userInfoListTileModel: UserInfoListTileModel(
                    titleText: 'Lekan Okeowo',
                    subTitleText: 'demo@gmail.com',
                    icon: AppImages.assetsImageAvatar3),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemsListView(),
          //  const SliverToBoxAdapter(child: Spacer()),

          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        icon: AppImages.assetsImagesSettings,
                        text: '   Setting system '),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        icon: AppImages.assetsImagesLogout,
                        text: '   Logout Account '),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
