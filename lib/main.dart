import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/screens/dashBoardScreen.dart';

main() {
  runApp(const ResponsiveDashBoardApp());
}

class ResponsiveDashBoardApp extends StatelessWidget {
  const ResponsiveDashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardScreen(),
    );
  }
}
