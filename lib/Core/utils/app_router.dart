import 'package:go_router/go_router.dart';
import 'package:orange_bay/Features/booking_details/data/models/prices_model.dart';
import 'package:orange_bay/Features/booking_details/presentation/views/booking_details_view.dart';
import 'package:orange_bay/Features/home/data/models/place_model.dart';
import 'package:orange_bay/Features/home/presentation/views/home_view.dart';
import 'package:orange_bay/Features/nav_bar/presentation/views/nav_bar_view.dart';
import 'package:orange_bay/Features/program_details/presentation/views/program_details_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kProgramDetailsView = '/programDetailsView';
  static const kBookingDetailsView = '/bookingDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const NavBarView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kProgramDetailsView,
        builder: (context, state) => ProgramDetailsView(
          place: state.extra as PlaceModel,
        ),
      ),
      GoRoute(
        path: kBookingDetailsView,
        builder: (context, state) => BookingDetailsView(
          price: state.extra as PricesModel,
        ),
      ),
    ],
  );
}
