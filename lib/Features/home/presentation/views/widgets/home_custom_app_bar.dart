import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/assets.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/language_switcher.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/notification_button.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: <Widget>[
          Image.asset(Assets.imagesLogoPNG),
          const Spacer(),
          const LanguageSwitcher(),
          const Gap(8),
          const NotificationButton(),
        ],
      ),
    );
  }
}
