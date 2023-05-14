import 'package:kw_store/features/home/data/models/category.dart';


abstract class CategoriesStates {}

class CategoriesInitial extends CategoriesStates {}

class CategoriesLoading extends CategoriesStates {}
class CategoriesFailure extends CategoriesStates {
  final String errorMessage;

  CategoriesFailure(this.errorMessage);

}

class CategoriesSuccess extends CategoriesStates {
  final List<Category> categories;

  CategoriesSuccess(this.categories);

}