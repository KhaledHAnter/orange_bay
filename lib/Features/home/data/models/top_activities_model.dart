import 'package:orange_bay/Core/utils/assets.dart';

class TopActivitiesModel {
  final String image, title;
  final double startingPrice;

  TopActivitiesModel({
    required this.image,
    required this.title,
    required this.startingPrice,
  });
}

List<TopActivitiesModel> topActivities = [
  TopActivitiesModel(
    image: Assets.imagesAimage1,
    title: "Dolphin Watching & Snorkeling",
    startingPrice: 150,
  ),
  TopActivitiesModel(
    image: Assets.imagesAimage2,
    title: "Massage",
    startingPrice: 180,
  ),
  TopActivitiesModel(
    image: Assets.imagesAimage3,
    title: "Photography",
    startingPrice: 100,
  ),
];
