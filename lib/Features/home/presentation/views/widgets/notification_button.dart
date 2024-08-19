import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_bay/Core/widgets/custom_container.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Stack(
        children: [
          const Center(
            child: Icon(
              FontAwesomeIcons.bell,
            ),
          ),
          Positioned(
            right: 1,
            top: 1,
            child: Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFF4747),
              ),
            ),
          )
        ],
      ),
    );
  }
}
