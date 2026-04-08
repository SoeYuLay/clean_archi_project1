import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';

part 'local_article_state.freezed.dart';

@freezed
class LocalArticleState with _$LocalArticleState {
  const factory LocalArticleState.loading() = LocalArticleLoading;

  const factory LocalArticleState.done(List<Article> articles) = LocalArticleDone;

  const factory LocalArticleState.error(String error) = LocalArticleError;

  const factory LocalArticleState.empty(String emptyMessage) = LocalArticleEmpty;
}
