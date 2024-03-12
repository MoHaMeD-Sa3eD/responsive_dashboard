import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/AllExpenses/AllExpensesItem/AllExpensesItemModel.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_images.dart';

import 'AllExpensesHeader/     AllExpensesHeader.dart';
import 'AllExpensesItem/AllExpensesItem.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: AllExpensesItem(
              allExpensesItemModel: AllExpensesItemModel(
                iconImageName: AppImages.assetsImagesIncome,
                itemTitle: 'Income',
                date: 'April 2022',
                price: '\$20,129',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
