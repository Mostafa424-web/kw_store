import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kw_store/features/home/data/repos/home_repo.dart';
import 'package:kw_store/features/home/presentation/manager/products_cubit/product_states.dart';

class ProductCubit extends Cubit<ProductsStates> {
  ProductCubit(this.homeRepo) : super(ProductsInitial());
  final HomeRepo homeRepo;

  Future<void>  fetchProduct() async {
    emit(ProductsLoading());
    var result = await homeRepo.fetchProducts();
    result.fold((failure) {
      emit(ProductsFailure(failure.errorMessage));
    }, (products) {
      emit(ProductsSuccess(products));
    });
  }

}