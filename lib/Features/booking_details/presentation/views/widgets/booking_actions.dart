import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/booking_details/data/models/price_control_model.dart';
import 'package:orange_bay/Features/booking_details/presentation/manager/prices_details_cubit/prices_details_cubit.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/booking_alert.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/booking_time_details.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/price_list_tile.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/white_card_widget.dart';

class BookingActions extends StatelessWidget {
  const BookingActions({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<PricesDetailsCubit>(context);

    List<PriceControlModel> pricesControl = [
      PriceControlModel(
        title: "Adult (age 12-99)",
        price: cubit.personPrice,
        onTap1: () {
          cubit.decrementAdults();
        },
        onTap2: () {
          cubit.incrementAdults();
        },
      ),
      PriceControlModel(
        title: "Child (age 5-11)",
        price: cubit.childPrice,
        onTap1: () {
          cubit.decrementChildren();
        },
        onTap2: () {
          cubit.incrementChildren();
        },
      ),
    ];

    return BlocBuilder<PricesDetailsCubit, PricesDetailsState>(
      builder: (context, state) {
        return WhiteCardWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const BookingTimeDetails(),
              const Gap(12),
              const Text(
                "How many tickets?",
                style: Styles.semiBold16,
              ),
              ...List.generate(pricesControl.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: PriceListTile(
                    cubit: cubit,
                    title: pricesControl[index].title,
                    price: pricesControl[index].price,
                    count: index == 0 ? cubit.adults : cubit.children,
                    onTap1: pricesControl[index].onTap1,
                    onTap2: pricesControl[index].onTap2,
                    isActive:
                        index == 0 ? cubit.adults > 1 : cubit.children > 0,
                  ),
                );
              }),
              const BookingAlerts(title: "Children under 4 are free"),
              const BookingAlerts(
                  title:
                      "For a full refund, cancel at least 24 hours in advance of the start date of the experience."),
              const Divider(
                height: 48,
              ),
              const Text("Additional Services", style: Styles.semiBold14),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: PriceListTile(
                  cubit: cubit,
                  title: "Boat cruise with \na snorkeling stop",
                  price: 250,
                  count: cubit.boats,
                  isActive: cubit.boats > 0,
                  onTap1: cubit.decrementBoats,
                  onTap2: cubit.incrementBoats,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
