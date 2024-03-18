import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/QuickInvoiceForm/CustomTextButton.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/QuickInvoiceForm/TitleTextField.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/QuickInvoiceForm/TitleTextFieldModel.dart';

import 'CustomElevatedButton.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                titleTextFieldModel: TitleTextFieldModel(
                    hintText: 'Type Customer name', titleText: 'Customer Name'),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                titleTextFieldModel: TitleTextFieldModel(
                    hintText: 'Type Customer email',
                    titleText: 'Customer Email'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                titleTextFieldModel: TitleTextFieldModel(
                    hintText: 'Type Item name', titleText: 'Item Name'),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                titleTextFieldModel: TitleTextFieldModel(
                    hintText: '▼ USD', titleText: 'Item mount'),
              ),
            ),
          ],

        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          children: [
            Expanded(child: CustomTextButton()),
             SizedBox(
              width: 24,
            ),
            Expanded(child: CustomElevatedButton()),
          ],
        ),
      ],
    );
  }
}
