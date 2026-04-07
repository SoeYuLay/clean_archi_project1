// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articleEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleEntityImpl _$$ArticleEntityImplFromJson(Map<String, dynamic> json) =>
    _$ArticleEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      urlToImage: json['urlToImage'] as String?,
      url: json['url'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$ArticleEntityImplToJson(_$ArticleEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'urlToImage': instance.urlToImage,
      'url': instance.url,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };
