import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.iconImageName});

  final String iconImageName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
              color: Color(0xFFFAFAFA), shape: OvalBorder()),
          child: SvgPicture.asset(iconImageName),
        ),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
