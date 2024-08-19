import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/constants.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.place});
  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(place.reviews?.length ?? 0, (index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: kBoederRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20,
                      child: Image.asset(place.reviews?[index].avatar ?? ""),
                    ),
                    const Gap(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          place.reviews![index].name,
                          style: Styles.semiBold14,
                        ),
                        const Gap(4),
                        Text(
                          place.reviews![index].username,
                          style: Styles.light12,
                        ),
                      ],
                    ),
                    const Spacer(),
                    ...List.generate(5, (i) {
                      if (place.reviews![index].rating >= i + 1) {
                        return const Icon(
                          Icons.star,
                          color: kPrimaryColor,
                        );
                      } else if (place.reviews![index].rating > i &&
                          place.reviews![index].rating < i + 1) {
                        return const Icon(
                          Icons.star_half,
                          color: kPrimaryColor,
                        );
                      } else {
                        return const Icon(
                          Icons.star_outline,
                          color: kPrimaryColor,
                        );
                      }
                    })
                  ],
                ),
                const Gap(8),
                Text(
                  place.reviews![index].review,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.regular14.copyWith(
                    color: const Color(0xff585757),
                  ),
                ),
                const Gap(4),
                const Row(
                  children: [
                    Text("Show more", style: Styles.regular12),
                    Gap(4),
                    Icon(Icons.keyboard_arrow_down,
                        size: 20, color: kPrimaryColor),
                  ],
                ),
                const Gap(16),
                Text(
                  place.reviews?[index].date ?? '',
                  style:
                      Styles.regular12.copyWith(color: const Color(0xff585757)),
                )
              ],
            ),
          );
        })
      ],
    );
  }
}
