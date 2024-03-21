import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: TextButton(
        onPressed: () {},
        child:  Text(
          'Add more details',
          style: AppStyles.styleBold16,
        ),
      ),
    );
  }
}
