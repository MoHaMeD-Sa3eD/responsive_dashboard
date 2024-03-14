import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/CustomBackGroundContainer.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/QuickInvoiceForm/TitleTextFieldModel.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/QuickInvoiceHeader/QuickInvoiceHeader.dart';
import 'LatestTransactionSection/LatestTransaction.dart';
import 'QuickInvoiceForm/TitleTextField.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 24),
          const LatestTransaction(),
          const Divider(height: 48),
          TitleTextField(
            titleTextFieldModel: TitleTextFieldModel(
                hintText: 'hintText', titleText: 'titleText'),
          ),
        ],
      ),
    );
  }
}
