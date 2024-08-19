import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Core/widgets/custom_container.dart';

class BookingDetailsAppBar extends StatelessWidget {
  const BookingDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const CustomContainer(
              child: Icon(Icons.arrow_back_ios_new),
            )),
        const Spacer(
          flex: 2,
        ),
        const Text('Booking Details', style: Styles.semiBold16),
        const Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
