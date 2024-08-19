import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'deatails_tabs_state.dart';

class DeatilsTabsCubit extends Cubit<DeatailsTabsState> {
  DeatilsTabsCubit() : super(DeatilsTabsOverview());

  int currentIndex = 0;

  void changeIndex(int value) {
    currentIndex = value;
    if (currentIndex == 0) {
      emit(DeatilsTabsOverview());
    } else if (currentIndex == 1) {
      emit(DeatilsTabsProgram());
    } else {
      emit(DeatilsTabsReviews());
    }
  }
}
