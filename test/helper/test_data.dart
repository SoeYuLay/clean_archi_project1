import 'package:clean_archi_project1/features/daily_news/data/data_sources/local/models/articleEntity.dart';
import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/models/articleDto.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';

class TestData{
  static final testArticleDto = [
    ArticleDto(
    title: 'Flutter Clean Architecture',
    author: 'Soe Yu Lwin',
    description: 'Clean architecture in Flutter',
    urlToImage: 'https://example.com/image.jpg',
    url: 'https://example.com/article',
    publishedAt: '2026-04-10T10:00:00Z',
    content: 'Full content here...',
    ),
    ArticleDto(
    title: 'Flutter Clean Architecture1',
    author: 'Soe Yu Lwin1',
    description: 'Clean architecture in Flutter1',
    urlToImage: 'https://example.com/image.jpg',
    url: 'https://example.com/article',
    publishedAt: '2026-04-10T10:00:00Z',
    content: 'Full content here...',
    )
  ];

  static final testArticleEntity = [
    ArticleEntity(
    title: 'Flutter Clean Architecture',
    author: 'Soe Yu Lwin',
    description: 'Clean architecture in Flutter',
    urlToImage: 'https://example.com/image.jpg',
    url: 'https://example.com/article',
    publishedAt: '2026-04-10T10:00:00Z',
    content: 'Full content here...',
    ),
    ArticleEntity(
    title: 'Flutter Clean Architecture1',
    author: 'Soe Yu Lwin1',
    description: 'Clean architecture in Flutter1',
    urlToImage: 'https://example.com/image.jpg',
    url: 'https://example.com/article',
    publishedAt: '2026-04-10T10:00:00Z',
    content: 'Full content here...',
    )
  ];

  static final testArticle = [
    Article(
    title: 'Flutter Clean Architecture',
    author: 'Soe Yu Lwin',
    description: 'Clean architecture in Flutter',
    urlToImage: 'https://example.com/image.jpg',
    url: 'https://example.com/article',
    publishedAt: '2026-04-10T10:00:00Z',
    content: 'Full content here...',
    ),
    Article(
    title: 'Flutter Clean Architecture1',
    author: 'Soe Yu Lwin1',
    description: 'Clean architecture in Flutter1',
    urlToImage: 'https://example.com/image.jpg',
    url: 'https://example.com/article',
    publishedAt: '2026-04-10T10:00:00Z',
    content: 'Full content here...',
    )
  ];
}

final remoteArticleError = RemoteArticleError('Failed to fetch articles');