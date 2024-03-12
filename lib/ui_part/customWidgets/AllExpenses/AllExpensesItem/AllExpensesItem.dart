import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/AllExpenses/AllExpensesItem/AllExpensesItemModel.dart';

import 'InActiveAllExpensesItem.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;

  final bool isActive ;

  const AllExpensesItem({super.key, required this.allExpensesItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}

