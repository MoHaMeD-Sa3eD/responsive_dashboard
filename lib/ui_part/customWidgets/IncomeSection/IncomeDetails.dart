import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/IncomeSection/ItemDetailsListView.dart';

import 'ItemDetailsModel.dart';

class IncomeDetailsList extends StatelessWidget {
  static const List<ItemDetailsModel> items = [
    ItemDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xFF208BC7),
    ),
    ItemDetailsModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xFF4DB7F2),
    ),
    ItemDetailsModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xFF064060),
    ),
    ItemDetailsModel(
      title: 'other',
      value: '22%',
      color: Color(0xFFE2DECD),
    ),
  ];

  const IncomeDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...items.map(
          (e) {
            return ItemDetails(itemDetailsModel: e);
          },
        ).toList(),
      ],
    );
  }
}
/*
 return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemDetails(itemDetailsModel: items[index]);
        });
 */
