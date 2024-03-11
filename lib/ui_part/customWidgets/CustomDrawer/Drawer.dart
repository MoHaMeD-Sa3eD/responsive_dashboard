import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/UserInfoListTile/UserInfoListTileModel.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/utils/app_images.dart';

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
      child: Column(
        children: [
          Card(
            color: const Color(0xFFFAFAFA),
            elevation: 0,
            child: UserInfoListTile(
              userInfoListTileModel: UserInfoListTileModel(
                  titleText: 'Lekan Okeowo',
                  subTitleText: 'demo@gmail.com',
                  icon: AppImages.assetsImageAvatar3),
            ),
          ),
        ],
      ),
    );
  }
}
