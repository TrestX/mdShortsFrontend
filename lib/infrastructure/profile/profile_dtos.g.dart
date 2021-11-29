// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileDto _$$_UserProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_UserProfileDto(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      speciality: (json['speciality'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      phoneNumber: json['phoneNumber'] as String,
      countryCode: json['countryCode'] as String,
      urlToProfileImage: json['urlToProfileImage'] as String,
      address: Map<String, String>.from(json['address'] as Map),
      about: json['about'] as String,
      designation: json['designation'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UserProfileDtoToJson(_$_UserProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'speciality': instance.speciality,
      'phoneNumber': instance.phoneNumber,
      'countryCode': instance.countryCode,
      'urlToProfileImage': instance.urlToProfileImage,
      'address': instance.address,
      'about': instance.about,
      'designation': instance.designation,
      'categories': instance.categories,
    };
