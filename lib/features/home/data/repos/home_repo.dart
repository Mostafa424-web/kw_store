import 'package:dartz/dartz.dart';
import 'package:kw_store/features/home/data/models/offer_event.dart';
import 'package:kw_store/features/home/data/models/product.dart';

import '../../../../core/errors/failures.dart';
import '../models/category.dart';
import '../models/type.dart';

abstract class HomeRepo {
  Future<Either<Failure , List<Product>>> fetchProducts();
  Future<Either<Failure , List<Category>>> fetchCategories();
  Future<Either<Failure , List<OfferEvent>>> fetchOffers();
  Future<Either<Failure , List<Types>>> fetchTypes();
}