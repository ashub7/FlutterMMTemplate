import 'package:domain/models/user.dart';
import 'package:domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network/datasource/user_remote_data_source.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl(this._userRemoteDataSource);

  @override
  List<User> getUsers() {
    throw Failure();
    // TODO: implement getUsers
    throw UnimplementedError();
  }
}

class Failure{

}