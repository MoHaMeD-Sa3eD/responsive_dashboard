import 'package:flutter/cupertino.dart';
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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
              maxHeight: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                    color: imageBackGroundColor ?? const Color(0xFFFAFAFA),
                    shape: const OvalBorder()),
                child: Center(
                  child: SvgPicture.asset(
                    iconImageName,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xFF4eB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
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
