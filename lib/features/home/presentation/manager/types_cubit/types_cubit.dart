import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kw_store/features/home/data/repos/home_repo.dart';
import 'package:kw_store/features/home/presentation/manager/types_cubit/types_states.dart';

class TypesCubit extends Cubit<TypesStates> {
  TypesCubit(this.homeRepo) : super(TypesInitial());
  final HomeRepo homeRepo;

  Future<void> fetchTypes() async {
    emit(TypesLoading());
    var result = await homeRepo.fetchTypes();
    result.fold((failure) {
      emit(TypesFailure(failure.errorMessage));
    }, (types) {
      emit(TypesSuccess(types));
    });
  }
}
