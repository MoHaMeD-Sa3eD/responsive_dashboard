import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import '../AllExpenses/AllExpensesHeader/DateOptionsWidget_headerpart.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        const DateOptions(),
      ],
    );
  }
}
