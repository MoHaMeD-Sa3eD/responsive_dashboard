import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomDrawer/Drawer.dart';

import '../MobileLayout/MobileLayout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: DashBoardDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
