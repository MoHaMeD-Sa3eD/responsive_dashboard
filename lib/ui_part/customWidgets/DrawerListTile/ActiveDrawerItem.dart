import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_styles.dart';
import 'DrawerItemModel.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: Text(
        drawerItemModel.text,
        style: AppStyles.styleBold16,
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(
          color: Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}