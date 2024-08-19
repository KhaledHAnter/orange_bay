import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityImage extends StatelessWidget {
  const ActivityImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 200 / 130,
      child: Container(
        padding: const EdgeInsets.all(12),
        alignment: Alignment.topRight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
        width: double.infinity,
        child: UnconstrainedBox(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(FontAwesomeIcons.heart),
          ),
        ),
      ),
    );
  }
}
