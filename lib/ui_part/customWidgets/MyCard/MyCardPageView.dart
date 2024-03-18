import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/MyCard/MyCard.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller:pageController ,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const MyCard();
        });
  }
}
/*
PageView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return const MyCard();
      },
    );
 */
