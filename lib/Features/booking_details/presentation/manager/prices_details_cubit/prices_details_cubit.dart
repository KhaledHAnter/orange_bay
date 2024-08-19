import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'prices_details_state.dart';

class PricesDetailsCubit extends Cubit<PricesDetailsState> {
  PricesDetailsCubit() : super(PricesDetailsInitial());

  int personPrice = 0;
  int childPrice = 0;
  int boatPrice = 250;

  int adults = 1;
  int children = 0;
  int boats = 0;

  int adultstotal = 0;
  int childrenstotal = 0;

  int total = 0;

  void initPrices(int person, int child) {
    personPrice = person;
    childPrice = child;
    calculateTotal();
    emit(PricesDetailsInitial());
  }

  void incrementAdults() {
    adults++;
    calculateTotal();
    emit(PricesDetailsInitial());
  }

  void decrementAdults() {
    if (adults > 1) {
      adults--;
    }
    calculateTotal();
    emit(PricesDetailsInitial());
  }

  void incrementChildren() {
    children++;
    calculateTotal();
    emit(PricesDetailsInitial());
  }

  void decrementChildren() {
    if (children > 0) {
      children--;
    }
    calculateTotal();
    emit(PricesDetailsInitial());
  }

  void incrementBoats() {
    boats++;
    calculateTotal();
    emit(PricesDetailsInitial());
  }

  void decrementBoats() {
    if (boats > 0) {
      boats--;
    }
    calculateTotal();
    emit(PricesDetailsInitial());
  }

  void calculateTotal() {
    adultstotal = adults * personPrice;
    childrenstotal = children * childPrice;
    total = adultstotal + childrenstotal + boatPrice * boats;
    emit(PricesDetailsInitial());
  }
}
