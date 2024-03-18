import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20,
            ),
            Text(
              'See all',
              style: AppStyles.styleMedium16,
            ),
          ],
        ),
      ],
    );
  }
}
