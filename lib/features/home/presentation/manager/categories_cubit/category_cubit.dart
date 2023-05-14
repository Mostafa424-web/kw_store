import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kw_store/features/home/data/repos/home_repo.dart';
import 'package:kw_store/features/home/presentation/manager/products_cubit/product_states.dart';

import 'category_states.dart';

class CategoryCubit extends Cubit<CategoriesStates> {
  CategoryCubit(this.homeRepo) : super(CategoriesInitial());
  final HomeRepo homeRepo;

  Future<void>  fetchCategory() async {
    emit(CategoriesLoading());
    var result = await homeRepo.fetchCategories();
    result.fold((failure) {
      emit(CategoriesFailure(failure.errorMessage));
    }, (categories) {
      emit(CategoriesSuccess(categories));
    });
  }

}