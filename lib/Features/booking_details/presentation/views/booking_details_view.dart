import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_bay/Features/booking_details/data/models/prices_model.dart';
import 'package:orange_bay/Features/booking_details/presentation/manager/prices_details_cubit/prices_details_cubit.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/widgets/booking_details_view_body.dart';
import 'package:orange_bay/constants.dart';

class BookingDetailsView extends StatelessWidget {
  const BookingDetailsView({
    super.key,
    required this.price,
  });

  final PricesModel price;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PricesDetailsCubit()..initPrices(price.personPrice, price.childPrice),
      child: const Scaffold(
        backgroundColor: kbackgroundColor,
        body: BookingDetailsViewBody(),
      ),
    );
  }
}
