import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: const Color(0xFF4DB7F2),
        ),
        child: const Text(
          'Send Money',
          style: AppStyles.styleSemiBold18,
        ),
      ),
    );
  }
}
