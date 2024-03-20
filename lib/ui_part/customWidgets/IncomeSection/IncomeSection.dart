import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomBackGroundContainer.dart';

import 'IncomeChart.dart';
import 'IncomeDetails.dart';
import 'IncomeSectionHeader.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          LargeIncomeSectionBody(),
        ],
      ),
    );
  }
}

class LargeIncomeSectionBody extends StatelessWidget {
  const LargeIncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex: 2, child: IncomeDetailsList()),
      ],
    );
  }
}
