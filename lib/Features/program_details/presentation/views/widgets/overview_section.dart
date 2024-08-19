import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/program_details/data/models/overview_icons_model.dart';
import 'package:orange_bay/constants.dart';

class OverviewSection extends StatelessWidget {
  const OverviewSection({super.key, required this.place});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Overview",
            style: Styles.semiBold14,
          ),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              overviewIcons.length,
              (index) {
                return SizedBox(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xffFFEDEC),
                        ),
                        child: Icon(
                          overviewIcons[index].icon,
                          color: kPrimaryColor,
                        ),
                      ),
                      const Gap(12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            overviewIcons[index].title,
                            style: Styles.regular14,
                          ),
                          const Gap(4),
                          Text(
                            overviewIcons[index].subTitle,
                            style: Styles.semiBold14,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Gap(16),
          Text(
            place.overview?.disc ?? '',
            style: Styles.regular14,
          )
        ],
      ),
    );
  }
}
