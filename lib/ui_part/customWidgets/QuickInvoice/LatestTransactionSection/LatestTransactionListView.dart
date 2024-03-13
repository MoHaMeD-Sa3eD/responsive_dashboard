import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/UserInfoListTile/UserInfoListTile.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/UserInfoListTile/UserInfoListTileModel.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_images.dart';

class LatestTransactionListView extends StatelessWidget {
  static const List<UserInfoListTileModel> items = [
    UserInfoListTileModel(
      titleText: 'Madrani Andi',
      subTitleText: 'Madrani Andi20@gmail.com',
      icon: AppImages.assetsImageAvatar1,
    ),
    UserInfoListTileModel(
      titleText: 'Madrani Andi',
      subTitleText: 'Madrani Andi20@gmail.com',
      icon: AppImages.assetsImageAvatar2,
    ),
    UserInfoListTileModel(
      titleText: 'Madrani Andi',
      subTitleText: 'Madrani Andi20@gmail.com',
      icon: AppImages.assetsImageAvatar1,
    ),
    UserInfoListTileModel(
      titleText: 'Madrani Andi',
      subTitleText: 'Madrani Andi20@gmail.com',
      icon: AppImages.assetsImageAvatar1,
    ),
  ];

  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
                child: UserInfoListTile(userInfoListTileModel: items[index]));
          }),
    );
  }
}
