import 'package:kw_store/features/home/data/models/type.dart';

import '../../../data/models/product.dart';

abstract class TypesStates {}

class TypesInitial extends TypesStates {}

class TypesLoading extends TypesStates {}
class TypesFailure extends TypesStates {
  final String errorMessage;

  TypesFailure(this.errorMessage);

}

class TypesSuccess extends TypesStates {
  final List<Types> types;

  TypesSuccess(this.types);

}