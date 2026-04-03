import 'package:clean_archi_project1/core/resources/data_state.dart';
import 'package:clean_archi_project1/features/daily_news/data/models/article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getArticles() {
    throw UnimplementedError();
  }
}