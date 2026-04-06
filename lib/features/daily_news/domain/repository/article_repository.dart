import 'package:clean_archi_project1/core/resources/data_state.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<Article>>> getNewsArticles();
}