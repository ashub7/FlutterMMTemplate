// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      company: json['company'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      zip: json['zip'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      phone: json['phone'] as String,
      photo: json['photo'] as String,
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'company': instance.company,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'zip': instance.zip,
      'state': instance.state,
      'country': instance.country,
      'phone': instance.phone,
      'photo': instance.photo,
    };
