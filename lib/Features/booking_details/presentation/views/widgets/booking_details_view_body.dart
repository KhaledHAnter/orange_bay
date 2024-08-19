import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:orange_bay/Core/widgets/app_button.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/booking_actions.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/booking_details_app_bar.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/booking_summary.dart';
import 'package:orange_bay/constants.dart';

class BookingDetailsViewBody extends StatelessWidget {
  const BookingDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 40, bottom: 16),
        child: Column(
          children: <Widget>[
            const BookingDetailsAppBar(),
            const BookingActions(),
            const BookingSummary(),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: IntrinsicHeight(
                        child: Container(
                          padding: const EdgeInsets.all(32),
                          child: Center(
                              child: LoadingAnimationWidget.beat(
                                  color: kPrimaryColor, size: 100)),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const AppButton(text: "Pay Now"),
            ),
          ],
        ),
      ),
    );
  }
}
