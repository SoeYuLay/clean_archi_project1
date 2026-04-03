import 'dart:io';

import 'package:clean_archi_project1/core/resources/constants/constants.dart';
import 'package:clean_archi_project1/core/resources/data_state.dart';
import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clean_archi_project1/features/daily_news/data/models/article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/repository/article_repository.dart';
import 'package:dio/dio.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try{
    final httpResponse = await _newsApiService.getNewsArticle(
      apiKey: newsAPIKey,
      country: countryQuery,
      category: categoryQuery,
    );

    if(httpResponse.statusCode == HttpStatus.ok) {
      return DataSuccess(httpResponse.data!);
    } else {
      return DataFailed(
        DioException(
          requestOptions: httpResponse.requestOptions,
          response: httpResponse,
          error: httpResponse.statusMessage ?? 'Failed to fetch articles',
          type: DioExceptionType.badResponse,
        ),
      );
    }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}