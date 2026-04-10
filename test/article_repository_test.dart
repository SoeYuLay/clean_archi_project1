import 'package:clean_archi_project1/core/error/failure.dart';
import 'package:clean_archi_project1/features/daily_news/data/data_sources/local/DAO/article_dao.dart';
import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clean_archi_project1/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:clean_archi_project1/features/daily_news/domain/repository/article_repository.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'article_repository_test.mocks.dart';
import 'helper/test_data.dart';

@GenerateMocks([NewsApiService, ArticleDao])
void main() {
  late ArticleRepository articleRepository;
  late MockNewsApiService mockApi;
  late MockArticleDao mockDao;

  setUp(() {
    mockApi = MockNewsApiService();
    mockDao = MockArticleDao();
    articleRepository = ArticleRepositoryImpl(mockApi, mockDao);
  });

  //success (apiService)
  test('Return list of articles if success ', () async {
    when(mockApi.getNewsArticle(
      apiKey: anyNamed('apiKey'),
      country: anyNamed('country'),
      category: anyNamed('category'),
    )).thenAnswer((_) async => TestData.testArticleDto);
    final result = await articleRepository.getNewsArticles();

    expect(result, isA<Right>());
    expect((result as Right).value, TestData.testArticle);
    verify(mockApi.getNewsArticle(
      apiKey: anyNamed('apiKey'),
      country: anyNamed('country'),
      category: anyNamed('category'),
    )).called(1);
  });

  //failure (apiService)
  test('Return list of articles if fail ', () async {
    when(mockApi.getNewsArticle(
      apiKey: anyNamed('apiKey'),
      country: anyNamed('country'),
      category: anyNamed('category'),
    )).thenThrow(DioException(
        requestOptions: RequestOptions(path: '/top-headlines'),
        response: Response(
            requestOptions: RequestOptions(path: '/top-headlines'),
            statusCode: 400,
            data: {'message': 'Article Error'})));
    final result = await articleRepository.getNewsArticles();

    expect(result, isA<Left>());
    expect((result as Left).value, isA<ServerFailure>());
    expect((result as Left).value.errorMessage, 'Article Error');
    verify(mockApi.getNewsArticle(
      apiKey: anyNamed('apiKey'),
      country: anyNamed('country'),
      category: anyNamed('category'),
    )).called(1);
  });

  
}