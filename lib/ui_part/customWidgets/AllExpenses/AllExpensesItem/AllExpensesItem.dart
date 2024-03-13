import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/AllExpenses/AllExpensesItem/AllExpensesItemModel.dart';

import 'ActiveAllExpensesItem.dart';
import 'InActiveAllExpensesItem.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;

  final bool isItemSelected;

  const AllExpensesItem({super.key,
    required this.allExpensesItemModel,
    required this.isItemSelected});

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(firstChild: ActiveAllExpensesItem(
        allExpensesItemModel: allExpensesItemModel),
        secondChild: InActiveAllExpensesItem(
            allExpensesItemModel: allExpensesItemModel),
        crossFadeState: isItemSelected?CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 500));
  }
}
