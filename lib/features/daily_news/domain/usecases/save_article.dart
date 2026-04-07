import 'package:clean_archi_project1/core/usecase/usecase.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/repository/article_repository.dart';

class SaveArticleUseCase implements UseCase<void, Article> {
  final ArticleRepository _articleRepository;

  SaveArticleUseCase(this._articleRepository);

  @override
  Future<void> call({Article? params}) {
    return _articleRepository.saveArticle(params!);
  }
}