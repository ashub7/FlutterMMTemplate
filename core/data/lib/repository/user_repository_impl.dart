import 'package:domain/models/user.dart';
import 'package:domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network/datasource/user_remote_data_source.dart';
import 'package:network/network/network_extension.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource _userRemoteDataSource;

   UserRepositoryImpl(this._userRemoteDataSource);

  @override
  Future<UserListResponse> getUsers() async{
    try {
      final response = await _userRemoteDataSource.getUsers();
      return UserListResponse.fromJson(response.data);
    } on Exception catch (e, _) {
      throw e.mapToFailure();
    }
  }
}


