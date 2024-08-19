import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/program_details/presentation/manager/cubit/deatails_tabs_cubit.dart';
import 'package:orange_bay/Features/program_details/presentation/views/widgets/program_details_body.dart';
import 'package:orange_bay/constants.dart';

class ProgramDetailsView extends StatelessWidget {
  const ProgramDetailsView({
    super.key,
    required this.place,
  });

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeatilsTabsCubit(),
      child: Scaffold(
        backgroundColor: kbackgroundColor,
        body: ProgramDetailsBody(
          place: place,
        ),
      ),
    );
  }
}
