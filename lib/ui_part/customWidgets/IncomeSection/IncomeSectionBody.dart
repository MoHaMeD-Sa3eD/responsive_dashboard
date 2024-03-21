import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/IncomeSection/MiniDetailedIncomeChart.dart';
import 'DetailedIncomeSectionBody.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return width >= 1200 && width < 1750
        ? SizedBox(
            width: width * 0.131,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: MiniDetailedIncomeChart(),
            ),
          )
        : const DetailedIncomeSectionBody();
  }
}
