import 'package:flutter/material.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/booking_details/data/models/booking_time_model.dart';

class BookingTimeDetails extends StatelessWidget {
  const BookingTimeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          "When are you going?",
          style: Styles.semiBold14,
        ),
        ...List.generate(bookingTime.length, (index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), border: Border.all()),
            child: Row(
              children: <Widget>[
                Text(
                  bookingTime[index].time,
                  style: Styles.regular14.copyWith(
                      color: const Color(0xff1f1f1f),
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Icon(
                  bookingTime[index].icon,
                  color: const Color(0xff969696),
                ),
              ],
            ),
          );
        })
      ],
    );
  }
}
