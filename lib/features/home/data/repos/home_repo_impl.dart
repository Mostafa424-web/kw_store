import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kw_store/core/errors/failures.dart';
import 'package:kw_store/core/utils/api_service.dart';
import 'package:kw_store/features/home/data/models/offer_event.dart';
import 'package:kw_store/features/home/data/models/product.dart';
import 'package:kw_store/features/home/data/repos/home_repo.dart';

import '../models/category.dart';
import '../models/type.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Category>>> fetchCategories() async {
    try {
      List<Category> categories = [];

      final data = await apiService.get(endPoint: 'categories');

      for (var item in data["doc"]) {
        try {
          categories.add(Category.fromJson(item));
        } on Exception catch (e) {
          categories.add(Category.fromJson(item));
        }
      }
      return right(categories);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<OfferEvent>>> fetchOffers() async {
    try {
      List<OfferEvent> offers = [];

      final data = await apiService.get(endPoint: 'offerEvent');

      for (var item in data["data"]["doc"]) {
        try {
          offers.add(OfferEvent.fromJson(item));
        } on Exception catch (e) {
          offers.add(OfferEvent.fromJson(item));
        }
      }
      return right(offers);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> fetchProducts() async {
    try {
      List<Product> products = [];

      final data = await apiService.get(endPoint: 'products');

      for (var item in data["data"]["doc"]) {
        try {
          products.add(Product.fromJson(item));
        } on Exception catch (e) {
          products.add(Product.fromJson(item));
        }
      }
      return right(products);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Types>>> fetchTypes() async {
    try {
      List<Types> types = [];

      final data = await apiService.get(endPoint: 'types');

      for (var item in data["doc"]) {
        try {
          types.add(Types.fromJson(item));
        } on Exception catch (e) {
          types.add(Types.fromJson(item));
        }
      }
      return right(types);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
