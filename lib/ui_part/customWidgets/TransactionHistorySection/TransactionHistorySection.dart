import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/TransactionHistorySection/TransactionHistoryList.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

import 'TransactionHistoryHeader/TransactionHistoryHeader.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryList(),
      ],
    );
  }
}
