import 'package:clean_archi_project1/core/resources/data_state.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/repository/article_repository.dart';

class FakeArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<Article>>> getNewsArticles() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return DataSuccess([
      Article(
        id: 1,
        title: 'Fake Article 1',
        author: 'Author 1',
        description: 'This is a description for fake article 1.',
        content: 'This is the content of fake article 1.',
        url: 'https://example.com/fake-article-1',
        urlToImage: 'https://example.com/fake-article-1.jpg',
        publishedAt: DateTime.now().toIso8601String(),
      ),
      Article(
        id: 2,
        title: 'Fake Article 2',
        author: 'Author 2', 
        description: 'This is a description for fake article 2.',
        content: 'This is the content of fake article 2.',  
        url: 'https://example.com/fake-article-2',
        urlToImage: 'https://example.com/fake-article-2.jpg',
        publishedAt: DateTime.now().toIso8601String(),
      ),
      Article(
        id: 3,
        title: 'Fake Article 3',
        author: 'Author 3', 
        description: 'This is a description for fake article 3.',
        content: 'This is the content of fake article 3.',  
        url: 'https://example.com/fake-article-3',
        urlToImage: 'https://example.com/fake-article-3.jpg',
        publishedAt: DateTime.now().toIso8601String(),
      ),
    ]);
  }   
}