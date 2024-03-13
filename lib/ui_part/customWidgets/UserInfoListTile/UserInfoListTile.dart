import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/UserInfoListTile/UserInfoListTileModel.dart';

import '../../utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoListTileModel userInfoListTileModel;

  const UserInfoListTile({
    super.key,
    required this.userInfoListTileModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0.2,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoListTileModel.icon),
          title: Text(
            userInfoListTileModel.titleText,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            userInfoListTileModel.subTitleText,
            style: AppStyles.styleRegular12,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
