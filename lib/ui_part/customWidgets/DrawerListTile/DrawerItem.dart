import 'package:flutter/material.dart';
import 'ActiveDrawerItem.dart';
import 'DrawerItemModel.dart';
import 'InActiveDrawerItem.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive == false
        ? InActiveDrawerItem(drawerItemModel: drawerItemModel)
        : ActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
