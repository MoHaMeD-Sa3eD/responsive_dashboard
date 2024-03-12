import 'package:flutter/material.dart';
import '../../customWidgets/AllExpenses/AllExpnses.dart';
import '../../customWidgets/CustomDrawer/Drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: DashBoardDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(
                child: AllExpensesWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
