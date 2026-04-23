import 'package:clean_archi_project1/core/error/failure.dart';
import 'package:clean_archi_project1/core/usecase/usecase.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/repository/article_repository.dart';
import 'package:either_dart/either.dart';

class GetArticleUseCase implements UseCase<Either<Failure, List<Article>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);

  @override
  Future<Either<Failure, List<Article>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}