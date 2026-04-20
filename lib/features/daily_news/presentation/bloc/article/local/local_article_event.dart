import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';

part 'local_article_event.freezed.dart';

@freezed
class LocalArticleEvent with _$LocalArticleEvent {
  const factory LocalArticleEvent.getSavedArticles() = GetSavedArticles;
  const factory LocalArticleEvent.removeArticle(Article article) = RemoveArticle;
  const factory LocalArticleEvent.saveArticle(Article article) = SaveArticle;
}
