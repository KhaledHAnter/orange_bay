import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/widgets/app_button.dart';
import 'package:orange_bay/Core/widgets/custom_container.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/all_program_header.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/all_programs_list_view.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/home_custom_app_bar.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/pick_a_date.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/today_activites_header.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/top_programs_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const HomeCustomAppBar(),
              const Gap(16),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: CustomContainer(
                  child: PickADate(),
                ),
              ),
              const AppButton(text: 'Search'),
              const Gap(24),
              const AllProgramsHeader(),
              const Gap(12),
              AllProgramsListView(height: height),
              const Gap(24),
              const TodayActivitesHeader(),
              const Gap(12),
              TopProgamsListView(height: height),
            ],
          ),
        ),
      ),
    );
  }
}
