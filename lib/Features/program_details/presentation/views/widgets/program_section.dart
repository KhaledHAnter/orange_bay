import 'package:flutter/material.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/time_line_widget.dart';
import 'package:orange_bay/constants.dart';

class ProgramSection extends StatelessWidget {
  const ProgramSection({super.key, required this.place});

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 24),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: kBoederRadius,
      ),
      child: Column(
        children: [
          ...List.generate(
            place.programs?.length ?? 0,
            (index) {
              return TimeLineWidget(
                title: place.programs![index].title,
                time: place.programs![index].time,
                isFirst: index == 0,
                isLast: index == place.programs!.length - 1,
              );
            },
          )
        ],
      ),
    );
  }
}
