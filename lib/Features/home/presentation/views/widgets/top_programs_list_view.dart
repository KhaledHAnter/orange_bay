import 'package:flutter/material.dart';
import 'package:orange_bay/Features/home/data/models/top_activities_model.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/top_activities_item.dart';

class TopProgamsListView extends StatelessWidget {
  const TopProgamsListView({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height < 700 ? height * 0.3 : height * 0.255,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topActivities.length,
        itemBuilder: (context, index) => TopActivitiesItem(
          activity: topActivities[index],
        ),
      ),
    );
  }
}
