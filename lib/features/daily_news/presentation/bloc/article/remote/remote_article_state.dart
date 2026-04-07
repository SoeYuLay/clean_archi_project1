// import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
// import 'package:dio/dio.dart';
// import 'package:equatable/equatable.dart';

// abstract class RemoteArticlesState extends Equatable {
//   final List<Article> ? articles;
//   final DioException ? error;

//   const RemoteArticlesState({this.articles, this.error});

//   @override
//   List<Object> get props => [articles!,];
// }

// class RemoteArticlesLoading extends RemoteArticlesState {
//   const RemoteArticlesLoading();
// }

// class RemoteArticlesDone extends RemoteArticlesState {
//   const RemoteArticlesDone({required List<Article> articles})
//       : super(articles: articles);
// }

// class RemoteArticlesError extends RemoteArticlesState {
//   const RemoteArticlesError({required DioException error})
//       : super(error: error);
// }


import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'remote_article_state.freezed.dart';

@freezed
class RemoteArticleState with _$RemoteArticleState {
  const factory RemoteArticleState.loading() = RemoteArticleLoading;

  const factory RemoteArticleState.done(List<Article> articles) = RemoteArticleDone;

  const factory RemoteArticleState.error(String error) = RemoteArticleError;
}