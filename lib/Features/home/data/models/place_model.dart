import 'package:orange_bay/Core/utils/assets.dart';
import 'package:orange_bay/Features/home/data/models/overview_model.dart';
import 'package:orange_bay/Features/home/data/models/program_model.dart';
import 'package:orange_bay/Features/home/data/models/rating_model.dart';
import 'package:orange_bay/Features/home/data/models/review_model.dart';

class PlaceModel {
  final List<String> images;
  final String name;
  final bool isFavorite;
  final RatingModel rating;
  final int personPrice, childPrice;
  final OverviewModel? overview;
  final List<ProgramModel>? programs;
  final List<ReviewModel>? reviews;

  PlaceModel({
    required this.images,
    required this.name,
    this.isFavorite = false,
    required this.rating,
    required this.personPrice,
    required this.childPrice,
    this.overview,
    this.programs,
    this.reviews,
  });
}

final List<PlaceModel> places = [
  PlaceModel(
    images: [
      Assets.imagesPimage1,
      Assets.imagesDimage1,
      Assets.imagesDimage2,
      Assets.imagesDimage3,
      Assets.imagesDimage4
    ],
    name: "Go Island",
    rating: RatingModel(rate: 4.7, count: 92),
    personPrice: 1000,
    childPrice: 700,
    overview: OverviewModel(
      disc:
          "Orange bay is a dream come true, you will feel as if you are a part of these portraits on the travel magazines. The old looking long wooden pier that leads you to the white soft sandy beaches, the gradual changing of water from dark blue to light turquoise, the swing stands in the middle of the shallow water, all in one big frame. Capture the moment, pick your beanbag, and relax on this magical beach.",
      duration: 12,
      location: "Country, city",
    ),
    programs: [
      ProgramModel(
        time: '8 Am',
        title: 'Leaving the marina',
      ),
      ProgramModel(
        time: '9 AM',
        title: 'Arriving to the island',
      ),
      ProgramModel(
        time: '9:30 AM',
        title: 'Stops at reef',
      ),
      ProgramModel(
        time: '10 AM',
        title: 'Arrive Snack canyan',
      ),
      ProgramModel(
        time: '10:15 AM',
        title: 'Giving Instructions',
      ),
      ProgramModel(
        time: '10:30 AM',
        title: 'Start Adventure',
      ),
      ProgramModel(
        time: '11 AM',
        title: 'Leaving the island',
      ),
    ],
    reviews: [
      ReviewModel(
        name: "Samantha Payne",
        avatar: Assets.imagesAvatar1PNG,
        username: "@Sam.Payne90",
        review:
            "“The staff went above and beyond to ensure we had a comfortable stay and were kind enough to pack breakfast for us as we checked out really early in the morning. All little things, but truly unforgettable experience.”",
        date: "23 Nov 2022",
        rating: 4.5,
      ),
      ReviewModel(
        name: "Samantha Payne",
        avatar: Assets.imagesAvatar2PNG,
        username: "@Sam.Payne90",
        review:
            "“Our stay was amazing and beyond our expectation. Everything was perfect and 3 days weren't enough at all !! The staff were friendly, welcoming and helpful. We tried couple of experiences at the resort which were a great add-on to our stay.”",
        date: "30 Nov 2022",
        rating: 5,
      ),
    ],
  ),
  PlaceModel(
    images: [
      Assets.imagesPimage2,
      Assets.imagesDimage1,
      Assets.imagesDimage2,
      Assets.imagesDimage3,
      Assets.imagesDimage4
    ],
    name: "Marasy Island",
    rating: RatingModel(rate: 4.5, count: 30),
    personPrice: 870,
    childPrice: 610,
  ),
];
