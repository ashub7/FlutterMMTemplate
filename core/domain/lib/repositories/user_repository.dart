import 'package:domain/models/user.dart';

abstract class UserRepository{
  List<User> getUsers();
}