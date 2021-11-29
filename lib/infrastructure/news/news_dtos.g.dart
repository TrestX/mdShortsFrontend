// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsDto _$$_NewsDtoFromJson(Map<String, dynamic> json) => _$_NewsDto(
      id: json['id'] as String,
      urlToImage: json['urlToImage'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      sourceName: json['sourceName'] as String,
      author: json['author'] as String,
      publishedAt: json['publishedAt'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_NewsDtoToJson(_$_NewsDto instance) =>
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
