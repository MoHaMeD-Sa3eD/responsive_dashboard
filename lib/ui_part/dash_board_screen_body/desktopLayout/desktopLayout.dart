import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/MyCard/MyCardPageView.dart';
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
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: Column(
          children: [
            Expanded(child: MyCardPageView()),
          ],
        )),
      ],
    );
  }
}
