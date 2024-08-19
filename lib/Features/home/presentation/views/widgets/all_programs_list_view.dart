import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:orange_bay/Core/utils/app_router.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/all_programs_item.dart';

class AllProgramsListView extends StatelessWidget {
  const AllProgramsListView({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height < 700 ? height * 0.47 : height * 0.39,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (context, index) => AllProgramsItem(
          place: places[index],
          onTap: () {
            GoRouter.of(context).push(
              AppRouter.kProgramDetailsView,
              extra: places[index],
            );
          },
        ),
      ),
    );
  }
}
