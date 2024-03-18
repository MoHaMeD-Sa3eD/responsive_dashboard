import 'package:flutter/material.dart';

class MyCardDotsIndicator extends StatelessWidget {
  final bool isActive;

  const MyCardDotsIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? const ActiveMyCardDotsIndicator()
        : const InActiveMyCardDotsIndicator();
  }
}

class InActiveMyCardDotsIndicator extends StatelessWidget {
  const InActiveMyCardDotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: 8,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: const Color(0xFFE7E7E7)),
      duration: const Duration(milliseconds: 500),
    );
  }
}

class ActiveMyCardDotsIndicator extends StatelessWidget {
  const ActiveMyCardDotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: 32,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: const Color(0xFF4DB7F2)),
      duration: const Duration(milliseconds: 500),
    );
  }
}
