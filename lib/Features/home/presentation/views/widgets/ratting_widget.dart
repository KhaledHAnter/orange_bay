import 'package:flutter/material.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/constants.dart';

class RattingWidget extends StatelessWidget {
  const RattingWidget({
    super.key,
    required this.place,
  });

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const Icon(
            Icons.star,
            color: kPrimaryColor,
          ),
          Text(
            place.rating.rate.toString(),
            style: Styles.semiBold16.copyWith(color: kPrimaryColor),
          ),
          Text(
            " (${place.rating.count.toString()})",
            style: Styles.semiBold16.copyWith(
              color: const Color(0xff969696),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
