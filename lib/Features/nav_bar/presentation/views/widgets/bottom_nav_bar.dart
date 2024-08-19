import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:orange_bay/Core/utils/styles.dart';
import 'package:orange_bay/Features/nav_bar/data/models/nav_bar_model.dart';
import 'package:orange_bay/Features/nav_bar/presentation/manager/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:orange_bay/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.cubit,
  });

  final NavBarCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      constraints: const BoxConstraints(
          // maxHeight: MediaQuery.sizeOf(context).height * 0.07,
          ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          navBarItems.length,
          (index) {
            bool isActive =
                navBarItems[index].currentIndex == cubit.currentIndex;
            return GestureDetector(
              onTap: () {
                cubit.changeIndex(navBarItems[index].currentIndex);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: isActive ? kPrimaryColor.withOpacity(0.1) : null,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      navBarItems[index].icon,
                      colorFilter: ColorFilter.mode(
                          isActive ? kPrimaryColor : const Color(0xff12131A),
                          BlendMode.srcIn),
                    ),
                    const Gap(4),
                    Text(
                      isActive ? navBarItems[index].label : '',
                      style: Styles.regular16.copyWith(color: kPrimaryColor),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// class BottomNavBar3 extends StatelessWidget {
//   const BottomNavBar3({super.key, required this.cubit});

//   final NavBarCubit cubit;

//   @override
//   Widget build(BuildContext context) {
//     return GNav(
//         onTabChange: cubit.changeIndex,
//         tabBorderRadius: 15,
//         gap: 8, // the tab button gap between icon and text
//         color: const Color(0xff12131A), // unselected icon color
//         activeColor: kPrimaryColor, // selected icon and text color
//         iconSize: 24, // tab button icon size
//         tabBackgroundColor:
//             kPrimaryColor.withOpacity(0.1), // selected tab background color
//         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
//         tabMargin: const EdgeInsets.symmetric(
//             horizontal: 24, vertical: 12), // navigation bar padding
//         tabs: const [
//           GButton(
//             icon: Icons.home,
//             text: 'Home',
//           ),
//           GButton(
//             icon: Icons.calendar_today,
//             text: 'Booking ',
//           ),
//           GButton(
//             icon: Icons.task_alt,
//             text: 'Services',
//           ),
//           GButton(
//             icon: Icons.more_horiz,
//             text: 'More',
//           )
//         ]);
//   }
// }

// class BottomNavBar2 extends StatelessWidget {
//   const BottomNavBar2({
//     super.key,
//     required this.cubit,
//   });

//   final NavBarCubit cubit;

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       showSelectedLabels: true,
//       selectedFontSize: 20,
//       selectedItemColor: Colors.black,
//       selectedLabelStyle: const TextStyle(color: Colors.black),
//       currentIndex: cubit.currentIndex,
//       onTap: cubit.changeIndex,
//       items: [
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset(
//             Assets.imagesHome,
//             colorFilter: ColorFilter.mode(
//                 cubit.currentIndex == 0 ? kPrimaryColor : Colors.black,
//                 BlendMode.srcIn),
//           ),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset(
//             Assets.imagesCalendar,
//             colorFilter: ColorFilter.mode(
//                 cubit.currentIndex == 1 ? kPrimaryColor : Colors.black,
//                 BlendMode.srcIn),
//           ),
//           label: 'Booking history',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset(
//             Assets.imagesTask,
//             colorFilter: ColorFilter.mode(
//                 cubit.currentIndex == 2 ? kPrimaryColor : Colors.black,
//                 BlendMode.srcIn),
//           ),
//           label: 'Services',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset(
//             Assets.imagesElipis,
//             colorFilter: ColorFilter.mode(
//                 cubit.currentIndex == 3 ? kPrimaryColor : Colors.black,
//                 BlendMode.srcIn),
//           ),
//           label: 'More',
//         ),
//       ],
//     );
//   }
// }
