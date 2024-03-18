import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/customWidgets/MyCard/DotsIndicator/ActiveAndInActiveDotsIndicator.dart';

class DotsIndicatorRow extends StatelessWidget {
  const DotsIndicatorRow({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          5,
          (index) => MyCardDotsIndicator(
              isActive: index == currentIndex ? true : false),
        ),
      ],
    );
  }
}
