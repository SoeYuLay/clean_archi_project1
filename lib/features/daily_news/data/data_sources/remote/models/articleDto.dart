// import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';

// class ArticleDto extends Article {
//   const ArticleDto({
//     int ? id,
//     String ? title,
//     String ? author,
//     String ? description,
//     String ? urlToImage,
//     String ? url,
//     String ? publishedAt,
//     String ? content,
//   }) : super(
//           id: id ?? 0,
//           title: title ?? '',
//           author: author ?? '',
//           description: description ?? '',
//           urlToImage: urlToImage ?? '',
//           url: url ?? '',
//           publishedAt: publishedAt ?? '',
//           content: content ?? '',
//         );

//   factory ArticleDto.fromJson(Map<String, dynamic> json) {
//     return ArticleDto(
//       author: json['author'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       url: json['url'] ?? '',
//       urlToImage: json['urlToImage'] ?? '',
//       publishedAt: json['publishedAt'] ?? '',
//       content: json['content'] ?? '',
//     );  
//   }
// } 

import 'package:freezed_annotation/freezed_annotation.dart';

part 'articleDto.freezed.dart';
part 'articleDto.g.dart';

@freezed
class ArticleDto with _$ArticleDto {
  const factory ArticleDto({
    // int? id,
    String? title,
    String? author,
    String? description,
    String? urlToImage,
    String? url,
    String? publishedAt,
    String? content,
  }) = _ArticleDto;

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);
}
