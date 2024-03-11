import 'package:flutter/material.dart';

import '../customWidgets/CustomDrawer/Drawer.dart';
import '../dash_board_screen_body/dashBoardScreenBody.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashBoardScreenBody(),
    );
  }
}
