import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_bay/Features/home/presentation/views/home_view.dart';
import 'package:orange_bay/Features/nav_bar/presentation/manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:orange_bay/Features/nav_bar/presentation/views/widgets/bottom_nav_bar.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<NavBarCubit>(context);
          return Scaffold(
            backgroundColor: const Color(0xffF7F7F7),
            body: [
              const HomeView(),
              const Center(
                child: Text("2nd"),
              ),
              const Center(
                child: Text("3rd"),
              ),
              const Center(
                child: Text("4th"),
              ),
            ][cubit.currentIndex],
            bottomNavigationBar: BottomNavBar(cubit: cubit),
          );
        },
      ),
    );
  }
}
