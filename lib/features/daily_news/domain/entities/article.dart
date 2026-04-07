// import 'package:equatable/equatable.dart';

// class Article extends Equatable {
//   final int id;
//   final String title;
//   final String author;
//   final String description;
//   final String urlToImage;
//   final String url;
//   final String publishedAt;
//   final String content;

//   const Article({
//     required this.id,
//     required this.title,
//     required this.author,
//     required this.description,
//     required this.urlToImage,
//     required this.url,
//     required this.publishedAt,
//     required this.content,
//   });
  
//   @override
//   List<Object?> get props {
//     return [
//       id,
//       title,
//       author,
//       description,
//       urlToImage,
//       url,
//       publishedAt,
//       content,
//     ];
//   }
// }
import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const  factory Article({
    // required int id,
    required String title,
    required String author,
    required String description,
    required String urlToImage,
    required String url,
    required String publishedAt,
    required String content,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}