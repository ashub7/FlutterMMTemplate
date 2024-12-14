import 'package:domain/usecases/user/get_users_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../uimodels/user/user_model.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetUsersUseCase _getUsersUseCase;

  HomeCubit(
    this._getUsersUseCase,
  ) : super(HomeInitial());

   loadUsers() async {
    await Future.delayed(const Duration(seconds: 5));
    String response = await _getUsersUseCase();
  }
}
