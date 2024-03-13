import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.iconImageName,
      this.imageBackGroundColor,
      this.imageColor,
      this.iconColor});

  final String iconImageName;

  final Color? imageBackGroundColor, imageColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              color: imageBackGroundColor ?? const Color(0xFFFAFAFA),
              shape: const OvalBorder()),
          child: SvgPicture.asset(
            iconImageName,
            colorFilter: ColorFilter.mode(
              imageColor ?? const Color(0xFF4eB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: iconColor ?? const Color(0xFF064061),
        ),
      ],
    );
  }
}
