// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      speciality: (json['speciality'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      phoneNumber: json['phoneNumber'] as String,
      countryCode: json['countryCode'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      urlToProfileImage: json['urlToProfileImage'] as String,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'speciality': instance.speciality,
      'phoneNumber': instance.phoneNumber,
      'countryCode': instance.countryCode,
      'categories': instance.categories,
      'urlToProfileImage': instance.urlToProfileImage,
    };
