import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/booking_details/presentation/manager/prices_details_cubit/prices_details_cubit.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/white_card_widget.dart';

class BookingSummary extends StatelessWidget {
  const BookingSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<PricesDetailsCubit>(context);

    return BlocBuilder<PricesDetailsCubit, PricesDetailsState>(
      builder: (context, state) {
        return WhiteCardWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Summary", style: Styles.semiBold16),
              const Gap(24),
              Row(
                children: <Widget>[
                  Text("Adult x${cubit.adults}", style: Styles.semiBold14),
                  const Spacer(),
                  Text("${cubit.adultstotal} EGP", style: Styles.semiBold14),
                ],
              ),
              const Gap(16),
              Row(
                children: <Widget>[
                  Text("Children x${cubit.children}", style: Styles.semiBold14),
                  const Spacer(),
                  Text("${cubit.childrenstotal} EGP", style: Styles.semiBold14),
                ],
              ),
              const Divider(
                height: 32,
              ),
              Row(
                children: <Widget>[
                  const Text("Total", style: Styles.semiBold16),
                  const Spacer(),
                  Text("${cubit.total} EGP", style: Styles.semiBold16),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
