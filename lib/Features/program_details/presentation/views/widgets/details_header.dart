import 'package:flutter/material.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/ratting_widget.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    super.key,
    required this.place,
  });

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${place.name} Program ",
          style: Styles.semiBold18,
        ),
        const Spacer(),
        RattingWidget(
          place: place,
        ),
      ],
    );
  }
}
