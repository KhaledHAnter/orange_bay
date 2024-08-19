import 'package:flutter/material.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/constants.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: const BoxDecoration(
          borderRadius: kBoederRadius, color: kPrimaryColor),
      child: Center(
        child: Text(
          text,
          style: Styles.regular16,
        ),
      ),
    );
  }
}
