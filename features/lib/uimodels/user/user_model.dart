import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String name,
    required String company,
    required String username,
    required String email,
    required String address,
    required String zip,
    required String state,
    required String country,
    required String phone,
    required String photo,
  }) = _UserModel;
}
