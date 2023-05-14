import '../../../data/models/product.dart';

abstract class ProductsStates {}

class ProductsInitial extends ProductsStates {}

class ProductsLoading extends ProductsStates {}
class ProductsFailure extends ProductsStates {
  final String errorMessage;

  ProductsFailure(this.errorMessage);

}

class ProductsSuccess extends ProductsStates {
final List<Product> products;

  ProductsSuccess(this.products);

}