import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/adaptive_layout_builder.dart';
import 'package:responsive_dashboard_flutter/ui_part/dash_board_screen_body/MobileLayout/MobileLayout.dart';
import 'package:responsive_dashboard_flutter/ui_part/dash_board_screen_body/desktopLayout/desktopLayout.dart';

import 'TabletLayout/TabletLayout.dart';

class DashBoardScreenBody extends StatelessWidget {
  const DashBoardScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutBuilder(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DashBoardDesktopLayout(),
    );
  }
}
