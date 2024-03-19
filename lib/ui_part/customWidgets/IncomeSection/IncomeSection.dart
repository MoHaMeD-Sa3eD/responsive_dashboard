import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/AllExpenses/AllExpensesHeader/DateOptionsWidget_headerpart.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomBackGroundContainer.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              'Income',
              style: AppStyles.styleSemiBold20,
            ),
            Spacer(),
            DateOptions(),
          ],
        ),
      ],
    ));
  }
}
