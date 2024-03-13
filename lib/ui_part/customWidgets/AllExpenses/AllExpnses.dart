import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/AllExpenses/AllExpensesItemsRow.dart';
import '../CustomBackGroundContainer.dart';
import 'AllExpensesHeader/     AllExpensesHeader.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItemsTogether(),
        ],
      ),
    );
  }
}
