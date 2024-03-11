import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/adaptive_layout_builder.dart';
import 'package:responsive_dashboard_flutter/ui_part/dash_board_screen_body/desktopLayout/desktopLayout.dart';

class DashBoardScreenBody extends StatelessWidget {
  const DashBoardScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutBuilder(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DashBoardDesktopLayout(),
    );
  }
}
