import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/assets.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/constants.dart';

class ReviewsHeader extends StatelessWidget {
  const ReviewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Add a review",
          style: Styles.semiBold16,
        ),
        const Gap(10),
        Text(
          "Be the first to review",
          style: Styles.regular14.copyWith(color: const Color(0xff969696)),
        ),
        const Gap(12),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: kBoederRadius,
          ),
          child: Row(
            children: <Widget>[
              Text(
                "Share your thoughts",
                style:
                    Styles.regular14.copyWith(color: const Color(0xff969696)),
              ),
              const Spacer(),
              SvgPicture.asset(Assets.imagesEmoji),
            ],
          ),
        ),
      ],
    );
  }
}
