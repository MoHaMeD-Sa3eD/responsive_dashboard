import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/AllExpenses/AllExpensesItem/AllExpensesItem.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_images.dart';
import 'AllExpensesItem/AllExpensesItemModel.dart';

class AllExpensesItemsTogether extends StatelessWidget {
  static const List<AllExpensesItemModel> allExpensesItemList = [
    AllExpensesItemModel(
      iconImageName: AppImages.assetsImagesBalance,
      itemTitle: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      iconImageName: AppImages.assetsImagesIncome,
      itemTitle: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllExpensesItemModel(
      iconImageName: AppImages.assetsImagesExpenses,
      itemTitle: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];

  const AllExpensesItemsTogether({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...allExpensesItemList.asMap().entries.map((e) {
          int index = e.key;
          var value = e.value;

          if (index == 1) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: AllExpensesItem(
                  allExpensesItemModel: value,
                  isActive: false,
                ),
              ),
            );
          } else {
            return Expanded(
                child: AllExpensesItem(
              allExpensesItemModel: value,
              isActive: false,
            ));
          }
        }).toList(),
      ],
    );
  }
}
