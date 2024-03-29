import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomDrawer/DrawerListTile/DrawerItem.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomDrawer/DrawerListTile/DrawerItemModel.dart';

import '../../../utils/app_images.dart';
class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(
        icon: AppImages.assetsImagesDashboard, text: '   DashBoard'),
    DrawerItemModel(
        icon: AppImages.assetsImagesMyTransactions, text: '   My Transaction'),
    DrawerItemModel(
        icon: AppImages.assetsImagesStatistics, text: '   Statistics'),
    DrawerItemModel(
        icon: AppImages.assetsImagesWalletAccount, text: '   Wallet Account'),
    DrawerItemModel(
        icon: AppImages.assetsImagesMyInvestments, text: '   My Investments'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      //physics: const NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (currentIndex != index) {
              setState(() {
                currentIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: currentIndex == index ? true : false,
            ),
          ),
        );
      },
    );
  }
}
