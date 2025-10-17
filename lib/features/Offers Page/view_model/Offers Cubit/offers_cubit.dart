import 'package:bloc/bloc.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/offer_model.dart';
import 'package:it_legend_task/features/Offers%20Page/data/repos/offer_repo.dart';
import 'package:meta/meta.dart';

part 'offers_state.dart';

class OffersCubit extends Cubit<OffersState> {
  OffersCubit() : super(OffersInitial());
  final OfferRepo offerRepo = OfferRepo();

  Future<void> getOffers() async {
    emit(OffersLoading());
    try {
      final offers = await offerRepo.getOffers();
      emit(OffersSuccess(offers: offers));
    } catch (e) {
      emit(OffersFailure(errMessage: e.toString()));
    }
  }

  Future<void> onOfferTapped(int offerId) async {
    try {
      // 1. Update the DB
      await offerRepo.selectOffer(offerId);

      await getOffers();
    } catch (e) {
      emit(OffersFailure(errMessage: e.toString()));
    }
  }
}
