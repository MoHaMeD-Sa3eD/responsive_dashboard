import 'package:flutter/material.dart';
import '../../customWidgets/CustomDrawer/Drawer.dart';
import 'AllExpensesAndQuickInvoiceSection.dart';

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
          child: AllExpensesAndQuickInvoiceSection(),
        ),
      ],
    );
  }
}


