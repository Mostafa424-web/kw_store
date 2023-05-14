import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kw_store/features/home/data/repos/home_repo.dart';

import 'offers_states.dart';

class OffersCubit extends Cubit<OffersStates> {
  OffersCubit(this.homeRepo) : super(OffersInitial());
  final HomeRepo homeRepo;

  Future<void> fetchOffers() async {
    emit(OffersLoading());
    var result = await homeRepo.fetchOffers();
    result.fold((failure) {
      emit(OffersFailure(failure.errorMessage));
    }, (offers) {
      emit(OffersSuccess(offers));
    });
  }
}
