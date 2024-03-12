import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/AllExpenses/AllExpensesItem/AllExpensesItemModel.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';
import 'AllExpensesItemHeader.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;

  const AllExpensesItem({super.key, required this.allExpensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            iconImageName: allExpensesItemModel.iconImageName,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.itemTitle,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
