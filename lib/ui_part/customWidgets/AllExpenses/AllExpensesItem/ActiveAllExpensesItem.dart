import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/app_styles.dart';
import 'AllExpensesItemHeader.dart';
import 'AllExpensesItemModel.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;

  const ActiveAllExpensesItem({super.key, required this.allExpensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Color(0xFF4DB7F2),
            )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackGroundColor: Colors.white.withOpacity(0.1000000000001),
            imageColor: Colors.white,
            iconImageName: allExpensesItemModel.iconImageName,
            iconColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.itemTitle,
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
