import 'package:flutter/material.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/program_details.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/program_image.dart';
import 'package:orange_bay/constants.dart';

class AllProgramsItem extends StatelessWidget {
  const AllProgramsItem({
    super.key,
    required this.place,
    this.onTap,
  });

  final PlaceModel place;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: MediaQuery.sizeOf(context).width * 0.8,
        decoration: const BoxDecoration(
            borderRadius: kBoederRadius, color: Colors.white),
        child: Column(
          children: [
            ProgramImage(image: place.images[0]),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              child: ProgramDetails(place: place),
            ),
          ],
        ),
      ),
    );
  }
}
