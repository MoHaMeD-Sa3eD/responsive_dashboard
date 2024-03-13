import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  final Widget child;

  final double? paddingValue;

  const CustomBackGroundContainer({
    super.key,
    required this.child,
    this.paddingValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(paddingValue ?? 20),
        ),
      ),
      child: child,
    );
  }
}
