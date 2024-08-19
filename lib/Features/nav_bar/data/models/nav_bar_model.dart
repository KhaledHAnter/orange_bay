import 'package:orange_bay/Core/utils/assets.dart';

class NavBarModel {
  final int currentIndex;
  final String label, icon;

  NavBarModel({
    required this.currentIndex,
    required this.label,
    required this.icon,
  });
}

final List<NavBarModel> navBarItems = [
  NavBarModel(
    currentIndex: 0,
    label: 'Home',
    icon: Assets.imagesHome,
  ),
  NavBarModel(
    currentIndex: 1,
    label: 'History',
    icon: Assets.imagesCalendar,
  ),
  NavBarModel(
    currentIndex: 2,
    label: 'Services',
    icon: Assets.imagesTask,
  ),
  NavBarModel(
    currentIndex: 3,
    label: 'More',
    icon: Assets.imagesElipis,
  ),
];
