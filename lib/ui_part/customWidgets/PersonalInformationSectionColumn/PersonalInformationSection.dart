import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../IncomeSection/IncomeSection.dart';
import '../MyCardAndTransactionHistorySection/MyCardAndTransactionHistorySection.dart';

class PersonalInformationSection extends StatelessWidget {
  const PersonalInformationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        MyCardAndTransactionHistorySection(),
        SizedBox(
          height: 24,
        ),
       IncomeSection(),
      ],
    );
  }
}
