import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/QuickInvoice/QuickInvoiceForm/CustomTextField.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

import 'TitleTextFieldModel.dart';

class TitleTextField extends StatelessWidget {
  final TitleTextFieldModel titleTextFieldModel;

  const TitleTextField({super.key, required this.titleTextFieldModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleTextFieldModel.titleText,
          style: AppStyles.styleMedium16(context),
        ),
        CustomTextField(
          hintText: titleTextFieldModel.hintText,
        ),
      ],
    );
  }
}
