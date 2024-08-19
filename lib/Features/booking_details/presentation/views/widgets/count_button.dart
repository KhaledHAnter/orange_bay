import 'package:flutter/material.dart';
import 'package:orange_bay/constants.dart';

class CountButton extends StatelessWidget {
  const CountButton({super.key, this.onTap, this.icon, this.isActive = true});

  final void Function()? onTap;
  final IconData? icon;

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : kPrimaryColor.withOpacity(.5),
            borderRadius: BorderRadius.circular(4)),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
