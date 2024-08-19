import 'package:flutter/material.dart';
import 'package:orange_bay/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        borderRadius: kBoederRadius,
        color: Colors.white,
      ),
      child: child,
    );
  }
}
