import 'package:domain/models/user.dart';
import 'package:domain/repositories/user_repository.dart';
import 'package:domain/usecases/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUsersUseCase extends BaseUseCase<UserListResponse> {
  final UserRepository _userRepository;

  GetUsersUseCase(this._userRepository);

  @override
  Future<UserListResponse>  call() async{
    return _userRepository.getUsers();
  }

}