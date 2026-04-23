import 'package:floor/floor.dart';

@Entity(tableName: 'articles')
class ArticleEntity {
  
  final String? title;
  final String? author;
  final String? description;
  final String? urlToImage;
  @primaryKey
  final String? url;
  final String? publishedAt;
  final String? content;

  ArticleEntity({
    this.title,
    this.author,
    this.description,
    this.urlToImage,
    required this.url,
    this.publishedAt,
    this.content,
  });
}


