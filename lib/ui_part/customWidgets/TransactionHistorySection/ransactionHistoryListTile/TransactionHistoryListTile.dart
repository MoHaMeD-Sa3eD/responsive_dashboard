import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/TransactionHistorySection/ransactionHistoryListTile/TransactionHistoryListTileModel.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

class TransactionHistoryListTile extends StatelessWidget {
  final TransactionHistoryListTileModel transactionHistoryListTileModel;

  const TransactionHistoryListTile({
    super.key,
    required this.transactionHistoryListTileModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        title: Text(
          transactionHistoryListTileModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionHistoryListTileModel.date,
          style: AppStyles.styleRegular16.copyWith(color: const Color(0xFAAAAAAA)),
        ),
        trailing: Text(
          transactionHistoryListTileModel.amount,
          style:AppStyles.styleSemiBold20.copyWith(color:transactionHistoryListTileModel.isWithdrawal==true? const Color(0xFFF3735E) :const Color(0xFF7CD87A) ),
        ),
      ),
    );
  }
}
