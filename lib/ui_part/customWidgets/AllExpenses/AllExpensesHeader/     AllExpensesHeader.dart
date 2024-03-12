import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

import 'DateOptionsWidget_headerpart.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        DateOptions(),
      ],
    );
  }
}
