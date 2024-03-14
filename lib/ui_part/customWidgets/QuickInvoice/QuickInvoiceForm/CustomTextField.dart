import 'package:flutter/material.dart';
import 'package:responsive_dashboard_flutter/ui_part/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        contentPadding: const EdgeInsets.all(20),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFAFAFA),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFFFAFAFA),
          ),
        ),
        hintText: hintText,
        hintStyle:
            AppStyles.styleRegular16.copyWith(color: const Color(0xFFAAAAAA)),
      ),
    );
  }
}
