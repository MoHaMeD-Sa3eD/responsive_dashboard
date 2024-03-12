import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/AllExpenses/AllExpensesItemsTogether.dart';
import 'AllExpensesHeader/     AllExpensesHeader.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItemsTogether(),
        ],
      ),
    );
  }
}
