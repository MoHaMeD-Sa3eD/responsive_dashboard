import 'package:flutter/material.dart';

import '../../customWidgets/AllExpenses/AllExpnses.dart';
import '../../customWidgets/QuickInvoice/QuickInvoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        AllExpensesWidget(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}