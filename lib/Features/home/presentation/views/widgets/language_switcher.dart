import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/assets.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Core/widgets/custom_container.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            Assets.imagesGlobe,
          ),
          const Gap(8),
          const Text(
            'English',
            style: Styles.semiBold12,
          ),
          const Gap(12),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
