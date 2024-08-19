import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/ratting_widget.dart';
import 'package:orange_bay/constants.dart';

class ProgramDetails extends StatelessWidget {
  const ProgramDetails({
    super.key,
    required this.place,
  });

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              place.name,
              style: Styles.semiBold16.copyWith(color: kPrimaryColor),
            ),
            const Spacer(),
            RattingWidget(place: place),
          ],
        ),
        const Gap(18),
        Row(
          children: [
            Text(
              "Starting from ",
              style: Styles.regular12.copyWith(color: const Color(0xff1F1F1F)),
            ),
            SizedBox(
              child: Text("${place.personPrice} EGP Per Person",
                  style: Styles.semiBold14),
            )
          ],
        ),
        Row(
          children: [
            Text(
              "Starting from ",
              style: Styles.regular12.copyWith(color: const Color(0xff1F1F1F)),
            ),
            Text("${place.childPrice} EGP Per Child", style: Styles.semiBold14)
          ],
        ),
      ],
    );
  }
}
