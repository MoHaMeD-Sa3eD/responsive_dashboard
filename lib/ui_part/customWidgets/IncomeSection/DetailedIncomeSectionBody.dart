import 'package:flutter/material.dart';

import 'IncomeChart.dart';
import 'IncomeDetails.dart';

class DetailedIncomeSectionBody extends StatelessWidget {
  const DetailedIncomeSectionBody({
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


