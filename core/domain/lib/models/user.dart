import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

class UserListResponse {

  int? limit;
  int? skip;
  int? total;
  List<User>? users;


  UserListResponse({this.users, this.total, this.skip, this.limit});

  UserListResponse.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = <User>[];
      json['users'].forEach((v) {
        users!.add(User.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (users != null) {
      data['users'] = users!.map((v) => v.toJson()).toList();
    }
    data['total'] = total;
    data['skip'] = skip;
    data['limit'] = limit;
    return data;
  }
}

@JsonSerializable()
class User {
  final int id;
  final String firstName;
  final String lastName;
  final String maidenName;
  final int age;
  final String email;
  final String phone;
  final String username;
  final String password;
  final String birthDate;
  final String image;
  final String bloodGroup;
  final double height;
  final double weight;
  final String eyeColor;
  final String ip;
  final String macAddress;
  final String university;
  final String ein;
  final String ssn;
  final String userAgent;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.ip,
    required this.macAddress,
    required this.university,
    required this.ein,
    required this.ssn,
    required this.userAgent,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
