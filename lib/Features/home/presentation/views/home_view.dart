import 'package:flutter/material.dart';
import 'package:orange_bay/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:orange_bay/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kbackgroundColor,
      body: HomeViewBody(),
    );
  }
}
