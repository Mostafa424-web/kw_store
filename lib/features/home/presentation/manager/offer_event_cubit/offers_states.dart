import 'package:kw_store/features/home/data/models/category.dart';
import 'package:kw_store/features/home/data/models/offer_event.dart';

import '../../../data/models/product.dart';

abstract class OffersStates {}

class OffersInitial extends OffersStates {}

class OffersLoading extends OffersStates {}
class OffersFailure extends OffersStates {
  final String errorMessage;

  OffersFailure(this.errorMessage);

}

class OffersSuccess extends OffersStates {
  final List<OfferEvent> offers;

  OffersSuccess(this.offers);

}