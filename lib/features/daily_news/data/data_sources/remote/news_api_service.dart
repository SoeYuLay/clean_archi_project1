
// import 'package:clean_archi_project1/core/resources/constants/constants.dart';
// import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/models/articleDto.dart';
// import 'package:dio/dio.dart';
// import 'package:retrofit/error_logger.dart';
// import 'package:retrofit/http.dart';
// part 'news_api_service.g.dart';

// @RestApi(baseUrl: newsAPIBaseURL)
// abstract class NewsApiService {
//   factory NewsApiService(Dio dio) = _NewsApiService;

//   @GET('/top-headlines')
//   Future<Response<List<ArticleDto>>> getNewsArticle({
//     @Query('apiKey') String ? apiKey,
//     @Query('country') String ? country,
//     @Query('category') String ? category,
//   });

// }

import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/models/articleDto.dart';
import 'package:dio/dio.dart';
import 'package:clean_archi_project1/core/resources/constants/constants.dart';

class NewsApiService {
  final Dio _dio;

  NewsApiService(this._dio);

  Future<List<ArticleDto>> getNewsArticle({
    String? apiKey,
    String? country,
    String? category,
  }) async {
    final response = await _dio.get(
      '$newsAPIBaseURL/top-headlines',
      queryParameters: {
        'apiKey': apiKey,
        'country': country,
        'category': category,
      },
    );

    final List<dynamic> data = response.data['articles'] as List<dynamic>;
    return data.map((json) => ArticleDto.fromJson(json)).toList();
  }
}
