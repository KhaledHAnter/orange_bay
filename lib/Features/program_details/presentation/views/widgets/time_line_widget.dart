import 'package:flutter/material.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/constants.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({
    super.key,
    this.isFirst = false,
    this.isLast = false,
    this.isPast = true,
    required this.title,
    required this.time,
  });

  final bool isFirst, isLast, isPast;
  final String title, time;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: const LineStyle(color: kPrimaryColor, thickness: 2),
      indicatorStyle: IndicatorStyle(
        color: kPrimaryColor,
        width: 24,
        height: 24,
        iconStyle: IconStyle(iconData: Icons.circle, color: Colors.white),
      ),
      endChild: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: RichText(
            text: TextSpan(
              text: "$time - ",
              style: Styles.semiBold18.copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: title, style: Styles.semiBold18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
