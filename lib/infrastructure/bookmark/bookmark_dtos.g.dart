// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookmarkDto _$$_BookmarkDtoFromJson(Map<String, dynamic> json) =>
    _$_BookmarkDto(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_BookmarkDtoToJson(_$_BookmarkDto instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_BookmarkGetDto _$$_BookmarkGetDtoFromJson(Map<String, dynamic> json) =>
    _$_BookmarkGetDto(
      id: json['id'] as String,
      urlToImage: json['urlToImage'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      sourceName: json['sourceName'] as String,
      author: json['author'] as String,
      publishedAt: json['publishedAt'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_BookmarkGetDtoToJson(_$_BookmarkGetDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'urlToImage': instance.urlToImage,
      'title': instance.title,
      'description': instance.description,
      'sourceName': instance.sourceName,
      'author': instance.author,
      'publishedAt': instance.publishedAt,
      'url': instance.url,
    };
