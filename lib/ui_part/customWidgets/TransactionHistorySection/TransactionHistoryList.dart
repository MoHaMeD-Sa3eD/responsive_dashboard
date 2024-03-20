import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/TransactionHistorySection/ransactionHistoryListTile/TransactionHistoryListTile.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/TransactionHistorySection/ransactionHistoryListTile/TransactionHistoryListTileModel.dart';

class TransactionHistoryList extends StatelessWidget {
  static const List<TransactionHistoryListTileModel> items = [
    TransactionHistoryListTileModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryListTileModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
    TransactionHistoryListTileModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawal: false,
    )
  ];

  const TransactionHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...items.map(
          (e) {
            return TransactionHistoryListTile(
              transactionHistoryListTileModel: e,
            );
          },
        ).toList(),
      ],
    );
  }
}
/*
ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return TransactionHistoryListTile(
            transactionHistoryListTileModel: items[index],
          );
        })
 */
