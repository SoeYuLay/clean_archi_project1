// import 'dart:io';
// import 'package:clean_archi_project1/core/resources/constants/constants.dart';
// import 'package:clean_archi_project1/core/resources/data_state.dart';
// import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/news_api_service.dart';
// import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
// import 'package:clean_archi_project1/features/daily_news/domain/repository/article_repository.dart';
// import 'package:dio/dio.dart';

// class ArticleRepositoryImpl implements ArticleRepository {
//   final NewsApiService _newsApiService;
//   ArticleRepositoryImpl(this._newsApiService);

//   @override
//   Future<DataState<List<Article>>> getNewsArticles() async {
//     try{
//     final httpResponse = await _newsApiService.getNewsArticle(
//       apiKey: newsAPIKey,
//       country: countryQuery,
//       category: categoryQuery,
//     );

//     if(httpResponse.statusCode == HttpStatus.ok) {
//       return DataSuccess(httpResponse.data!);
//     } else {
//       return DataFailed(
//         DioException(
//           requestOptions: httpResponse.requestOptions,
//           response: httpResponse,
//           error: httpResponse.statusMessage ?? 'Failed to fetch articles',
//           type: DioExceptionType.badResponse,
//         ),
//       );
//     }
//     } on DioException catch (e) {
//       return DataFailed(e);
//     }
//   }
// }

import 'package:clean_archi_project1/core/resources/constants/constants.dart';
import 'package:clean_archi_project1/core/resources/data_state.dart';
import 'package:clean_archi_project1/features/daily_news/data/data_sources/local/app_database.dart';
import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clean_archi_project1/features/daily_news/data/mappers/article_mapper.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/repository/article_repository.dart';
import 'package:dio/dio.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  final AppDatabase _appDatabase;
  ArticleRepositoryImpl(this._newsApiService, this._appDatabase);

  @override
  Future<DataState<List<Article>>> getNewsArticles() async {
    try {
      final articlesDto = await _newsApiService.getNewsArticle(
        apiKey: newsAPIKey,
        country: countryQuery,
        category: categoryQuery,
      );

      //map DTO to Domain
      final articles = articlesDto.map((dto) => dto.toDomain()).toList();

      return DataSuccess(articles);

    } on DioException catch (e) {
      return DataFailed(e);
    } catch (e) {
      return DataFailed(
        DioException(
          requestOptions: RequestOptions(path: '$newsAPIBaseURL/top-headlines'),
          error: e,
          type: DioExceptionType.unknown,
        ),
      );
    }
  }
  
  @override
  Future<void> deleteArticle(Article article) async{
    final entity = article.toDb();
    await _appDatabase.articleDao.deleteArticle(entity);
  }
  
  @override
  Future<List<Article>> getSavedArticles() async{
    final entities = await _appDatabase.articleDao.getAllArticles();
    return entities.map((e) => e.toDomain()).toList();
  }
  
  @override
  Future<void> saveArticle(Article article) async {
  try {
    final entity = article.toDb();

    await _appDatabase.articleDao.insertArticle(entity);
    
  } catch (e, stackTrace) {
    print('Error saving article: $e');
    print(stackTrace);
  }
}

}
