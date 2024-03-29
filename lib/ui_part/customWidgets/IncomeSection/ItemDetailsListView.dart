import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/IncomeSection/ItemDetailsModel.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  final ItemDetailsModel itemDetailsModel;

  const ItemDetails({
    super.key,
    required this.itemDetailsModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:  ShapeDecoration(
            color: itemDetailsModel.color , shape: const OvalBorder()),
      ),
      title:  Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing:  Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
