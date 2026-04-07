// abstract class RemoteArticlesEvent{
//   const RemoteArticlesEvent();
// }

// class GetArticles extends RemoteArticlesEvent{
//   const GetArticles();
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_article_event.freezed.dart';

@freezed
class RemoteArticleEvent with _$RemoteArticleEvent {
  const factory RemoteArticleEvent.getArticles() = GetArticles;
}
