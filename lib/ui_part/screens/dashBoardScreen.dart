import 'package:flutter/material.dart';
import '../dash_board_screen_body/dashBoardScreenBody.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: DashBoardScreenBody(),
    );
  }
}
