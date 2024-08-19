import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/review_card.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/reviews_header.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key, required this.place});

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Gap(16),
        const ReviewsHeader(),
        const Gap(10),
        ReviewCard(place: place)
      ],
    );
  }
}
