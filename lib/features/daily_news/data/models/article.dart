import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    int ? id,
    String ? title,
    String ? author,
    String ? description,
    String ? urlToImage,
    String ? url,
    String ? publishedAt,
    String ? content,
  }) : super(
          id: id ?? 0,
          title: title ?? '',
          author: author ?? '',
          description: description ?? '',
          urlToImage: urlToImage ?? '',
          url: url ?? '',
          publishedAt: publishedAt ?? '',
          content: content ?? '',
        );

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      author: json['author'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
    );  
  }
} 
