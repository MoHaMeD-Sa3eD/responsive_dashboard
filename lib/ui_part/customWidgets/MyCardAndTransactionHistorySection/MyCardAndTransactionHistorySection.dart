import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomBackGroundContainer.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/MyCard/MyCardSection.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/TransactionHistorySection/TransactionHistorySection.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
          thickness: 2,
        ),
        TransactionHistorySection(),
      ],
    ));
  }
}
