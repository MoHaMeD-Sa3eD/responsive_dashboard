import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomDrawer/Drawer.dart';
import '../dash_board_screen_body/dashBoardScreenBody.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 800 ? AppBar() : null,
      drawer: const DashBoardDrawer(),
      backgroundColor: const Color(0xFFF7F9FA),
      body: const DashBoardScreenBody(),
    );
  }
}
