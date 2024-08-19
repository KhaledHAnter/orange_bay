import 'package:flutter/material.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/program_details/presentation/manager/cubit/deatails_tabs_cubit.dart';
import 'package:orange_bay/constants.dart';

class DetailsTabs extends StatelessWidget {
  const DetailsTabs({
    super.key,
    required this.cubit,
  });

  final DeatilsTabsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: kBoederRadius,
      ),
      child: Row(
        children: List.generate(
          tabs.length,
          (index) {
            return Expanded(
                child: GestureDetector(
              onTap: () => cubit.changeIndex(index),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: kBoederRadius,
                    color: index == cubit.currentIndex
                        ? kPrimaryColor
                        : Colors.white),
                child: Center(
                  child: Text(
                    tabs[index],
                    style: Styles.regular14.copyWith(
                        fontWeight: FontWeight.w500,
                        color: index == cubit.currentIndex
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            ));
          },
        ),
      ),
    );
  }
}

List<String> tabs = ["Overview", "Program", "Reviews"];
