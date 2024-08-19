import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OverviewIconsModel {
  final String title, subTitle;
  final IconData icon;
  OverviewIconsModel({
    required this.title,
    required this.subTitle,
    required this.icon,
  });
}

List<OverviewIconsModel> overviewIcons = [
  OverviewIconsModel(
    title: 'Duration',
    subTitle: '12 Hours',
    icon: FontAwesomeIcons.clock,
  ),
  OverviewIconsModel(
    title: 'Location',
    subTitle: 'Country, city',
    icon: FontAwesomeIcons.locationDot,
  ),
];
