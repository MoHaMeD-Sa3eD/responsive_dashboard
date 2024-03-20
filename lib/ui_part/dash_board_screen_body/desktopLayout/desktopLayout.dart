import 'package:flutter/material.dart';
import '../../customWidgets/CustomDrawer/Drawer.dart';
import '../../customWidgets/PersonalInformationSectionColumn/PersonalInformationSection.dart';
import '../../customWidgets/AllExpensesAndQuickInvoiceSection/AllExpensesAndQuickInvoiceSection.dart';

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
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(child: PersonalInformationSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
