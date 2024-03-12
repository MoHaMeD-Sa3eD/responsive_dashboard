import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class DateOptions extends StatelessWidget {
  const DateOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1))),
      ),
      child: const Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          SizedBox(
            width: 18,
          ),
          Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Color(0xFF064060),
          ),
        ],
      ),
    );
  }
}