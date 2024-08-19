import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/home/data/models/top_activities_model.dart';

class ActivityDetails extends StatelessWidget {
  const ActivityDetails({
    super.key,
    required this.activity,
  });

  final TopActivitiesModel activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            activity.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.regular14.copyWith(color: const Color(0xff1f1f1f)),
          ),
          const Gap(4),
          Text(
            "From ${activity.startingPrice} EGP",
            style: Styles.regular12.copyWith(color: const Color(0xff969696)),
          ),
        ],
      ),
    );
  }
}
