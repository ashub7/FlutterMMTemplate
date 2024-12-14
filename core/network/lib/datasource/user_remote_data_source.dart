import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class UserRemoteDataSource {
  Future<List<dynamic>> getUsers();
}

@Injectable(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  late final Dio dio;

  UserRemoteDataSourceImpl({required this.dio});

  @override
  Future<List> getUsers() {
    throw UnimplementedError();
  }

}
