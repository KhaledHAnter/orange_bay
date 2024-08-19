import 'package:flutter/material.dart';
import 'package:orange_bay/Core/utils/styles.dart';

class AllProgramsHeader extends StatelessWidget {
  const AllProgramsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Top Programs in Orange Bay',
          style: Styles.semiBold14.copyWith(color: Colors.black),
        ),
        const Spacer(),
        const Text(
          'see all',
          style: Styles.regular12,
        ),
      ],
    );
  }
}
