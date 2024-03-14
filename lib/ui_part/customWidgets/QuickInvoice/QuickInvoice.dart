import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomBackGroundContainer.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/QuickInvoiceForm/QuickInvoiceForm.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/QuickInvoiceHeader/QuickInvoiceHeader.dart';
import 'LatestTransactionSection/LatestTransaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
