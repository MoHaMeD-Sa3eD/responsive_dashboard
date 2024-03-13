import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomBackGroundContainer.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/QuickInvoiceHeader/QuickInvoiceHeader.dart';

import '../../utils/app_styles.dart';
import 'LatestTransactionSection/LatestTransaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
        ],
      ),
    );
  }
}

