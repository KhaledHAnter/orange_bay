import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';

class PickADate extends StatelessWidget {
  const PickADate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.calendar_today,
            color: Color(0xff585757),
          ),
          const Gap(6),
          Text(
            "Pick a Date",
            style: Styles.regular14.copyWith(color: const Color(0xff585757)),
          )
        ],
      ),
    );
  }
}
