import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/models/articleDto.dart';

import '../../domain/entities/article.dart';

extension ArticleDtoX on ArticleDto {
  Article toDomain() => Article(
        id: id ?? 0,
        title: title ?? '',
        author: author ?? '',
        description: description ?? '',
        urlToImage: urlToImage ?? '',
        url: url ?? '',
        publishedAt: publishedAt ?? '',
        content: content ?? '',
      );
}

extension ArticleX on Article {
  ArticleDto toDto() => ArticleDto(
        id: id,
        title: title,
        author: author,
        description: description,
        urlToImage: urlToImage,
        url: url,
        publishedAt: publishedAt,
        content: content,
      );
}
