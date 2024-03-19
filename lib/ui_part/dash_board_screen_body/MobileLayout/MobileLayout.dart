import 'package:flutter/material.dart';

import '../../customWidgets/AllExpensesAndQuickInvoiceSection/AllExpensesAndQuickInvoiceSection.dart';
import '../../customWidgets/PersonalInformationSectionColumn/PersonalInformationSection.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesAndQuickInvoiceSection(),
        SizedBox(height: 24),
        PersonalInformationSection(),
      ],
    );
  }
}