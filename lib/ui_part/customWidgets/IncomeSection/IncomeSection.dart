import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomBackGroundContainer.dart';
import 'IncomeSectionHeader.dart';
import 'LargeIncomeSectionBody.dart';

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


