import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:orange_bay/Core/utils/app_router.dart';
import 'package:orange_bay/Core/widgets/app_button.dart';
import 'package:orange_bay/Features/booking_details/data/models/prices_model.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/program_details/presentation/manager/cubit/deatails_tabs_cubit.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/details_header.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/details_tabs.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/overview_section.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/program_details_images.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/program_section.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/reviews_section.dart';

class ProgramDetailsBody extends StatelessWidget {
  const ProgramDetailsBody({super.key, required this.place});

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProgramDetailsImages(place: place),
          const Gap(12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                DetailsHeader(place: place),
                const Gap(20),
                BlocBuilder<DeatilsTabsCubit, DeatailsTabsState>(
                  builder: (context, state) {
                    final cubit = BlocProvider.of<DeatilsTabsCubit>(context);
                    return Column(
                      children: [
                        DetailsTabs(cubit: cubit),
                        Builder(
                          builder: (context) {
                            if (state is DeatilsTabsOverview) {
                              return OverviewSection(
                                place: place,
                              );
                            } else if (state is DeatilsTabsProgram) {
                              return ProgramSection(place: place);
                            } else {
                              return ReviewsSection(place: place);
                            }
                          },
                        ),
                        GestureDetector(
                            onTap: () {
                              GoRouter.of(context).push(
                                AppRouter.kBookingDetailsView,
                                extra: PricesModel(
                                  personPrice: place.personPrice,
                                  childPrice: place.childPrice,
                                ),
                              );
                            },
                            child: const AppButton(
                              text: "Book Now",
                            )),
                        const Gap(20),
                      ],
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
