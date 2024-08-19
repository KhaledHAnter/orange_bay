import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/constants.dart';

class BookingAlerts extends StatelessWidget {
  const BookingAlerts({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.info_outline,
          color: kPrimaryColor,
        ),
        const Gap(8),
        Expanded(
          child: Text(
            title,
            style: Styles.regular12.copyWith(color: const Color(0xff1E1E1E)),
          ),
        ),
      ],
    );
  }
}
