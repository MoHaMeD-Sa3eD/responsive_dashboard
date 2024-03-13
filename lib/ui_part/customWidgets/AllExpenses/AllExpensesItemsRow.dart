import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/AllExpenses/AllExpensesItem/AllExpensesItem.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_images.dart';
import 'AllExpensesItem/AllExpensesItemModel.dart';

class AllExpensesItemsTogether extends StatefulWidget {
  const AllExpensesItemsTogether({super.key});

  @override
  State<AllExpensesItemsTogether> createState() =>
      _AllExpensesItemsTogetherState();
}

class _AllExpensesItemsTogetherState extends State<AllExpensesItemsTogether> {
  final List<AllExpensesItemModel> allExpensesItemList = const [
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

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...allExpensesItemList.asMap().entries.map((e) {
          int index = e.key;
          var value = e.value;

          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AllExpensesItem(
                    allExpensesItemModel: value,
                    isItemSelected: selectedIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AllExpensesItem(
                    allExpensesItemModel: value,
                    isItemSelected: selectedIndex == index,
                  ),
                ),
              ),
            );
          }
        }).toList(),
      ],
    );
  }
}
