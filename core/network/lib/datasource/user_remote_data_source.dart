import 'package:common/network/api_urls.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../network/api_client.dart';

abstract class UserRemoteDataSource {
  Future<Response> getUsers();
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  late final ApiClient apiClient;

  UserRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<Response> getUsers() async {
    try {
      return await apiClient.get(ApiUrls.userListUrl);
    } catch (e) {
      rethrow;
    }
  }
}
