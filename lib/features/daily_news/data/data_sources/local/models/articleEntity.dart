import 'package:freezed_annotation/freezed_annotation.dart';

part 'articleEntity.freezed.dart';
part 'articleEntity.g.dart';

@freezed
class ArticleEntity with _$ArticleEntity {
  const factory ArticleEntity({
    int? id,
    String? title,
    String? author,
    String? description,
    String? urlToImage,
    String? url,
    String? publishedAt,
    String? content,
  }) = _ArticleEntity;

  factory ArticleEntity.fromJson(Map<String, dynamic> json) =>
      _$ArticleEntityFromJson(json);
}
