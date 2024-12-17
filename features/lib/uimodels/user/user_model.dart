import 'package:domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int? id,
    required String? firstName,
    required String? lastName,
    required String? email,
    required String? phone,
    required String? image,
  }) = _UserModel;

  factory UserModel.from(User user) {
    return UserModel(
        id: user.id,
        firstName: user.firstName,
        lastName: user.lastName,
        email: user.email,
        phone: user.phone,
        image: user.image);
  }
}
