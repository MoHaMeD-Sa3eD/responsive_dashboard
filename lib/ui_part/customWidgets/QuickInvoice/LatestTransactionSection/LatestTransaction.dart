import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/LatestTransactionSection/LatestTransactionListView.dart';

import '../../../utils/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment:Alignment.centerLeft,
          child: Text(

            'Latest Transaction',
            style: AppStyles.styleMedium16,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        LatestTransactionListView(),
      ],
    );
  }
}
