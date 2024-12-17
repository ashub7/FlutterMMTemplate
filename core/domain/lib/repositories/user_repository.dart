import 'package:domain/models/user.dart';

abstract class UserRepository{
  Future<UserListResponse> getUsers();
}