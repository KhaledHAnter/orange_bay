import 'package:flutter/material.dart';
import 'package:orange_bay/Features/home/data/models/top_activities_model.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/activity_details.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/activity_image.dart';
import 'package:orange_bay/constants.dart';

class TopActivitiesItem extends StatelessWidget {
  const TopActivitiesItem({
    super.key,
    required this.activity,
  });

  final TopActivitiesModel activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: MediaQuery.sizeOf(context).width * 0.5,
      decoration:
          const BoxDecoration(borderRadius: kBoederRadius, color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ActivityImage(image: activity.image),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
            child: ActivityDetails(activity: activity),
          ),
        ],
      ),
    );
  }
}
