import 'package:common/logging/logging.dart';
import 'package:common/network/api_failure.dart';
import 'package:domain/usecases/user/get_users_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:features/uimodels/user/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetUsersUseCase _getUsersUseCase;

  HomeCubit(
    this._getUsersUseCase,
  ) : super(HomeInitial());

  loadUsers() async {
    emit(HomeLoading());
    try {
      final response = await _getUsersUseCase();
      emit(HomeLoadSuccess(
          users: response.users!.map((e) => UserModel.from(e)).toList()));
    } on ApiFailure catch (failure) {
      emit(HomeLoadError(failure.message));
    }
  }
}
