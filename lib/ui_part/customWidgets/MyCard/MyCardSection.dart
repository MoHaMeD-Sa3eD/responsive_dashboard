import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/MyCard/DotsIndicator/ActiveAndInActiveDotsIndicator.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/MyCard/MyCardPageView.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyCardPageView(),
        MyCardDotsIndicator(isActive: true,),
      ],
    );
  }
}
