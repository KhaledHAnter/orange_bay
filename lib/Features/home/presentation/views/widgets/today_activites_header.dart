import 'package:flutter/material.dart';
import 'package:orange_bay/Core/utils/styles.dart';

class TodayActivitesHeader extends StatelessWidget {
  const TodayActivitesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Today Activities',
          style: Styles.semiBold14.copyWith(color: Colors.black),
        ),
        const Spacer(),
        const Text(
          'see all',
          style: Styles.regular12,
        ),
      ],
    );
  }
}
