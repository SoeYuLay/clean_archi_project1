import 'package:clean_archi_project1/features/daily_news/domain/usecases/get_saved_article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/usecases/remove_article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/usecases/save_article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_event.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalArticleBloc extends Bloc<LocalArticleEvent, LocalArticleState> {
  final GetSavedArticleUseCase _getSavedArticleUseCase;
  final SaveArticleUseCase _saveArticleUseCase;
  final RemoveArticleUseCase _removeArticleUseCase;

  LocalArticleBloc(
    this._getSavedArticleUseCase,
    this._saveArticleUseCase,
    this._removeArticleUseCase,
  ) : super(const LocalArticleLoading()) {
  on <GetSavedArticles>(onGetSavedArticles);
  on <RemoveArticle>(onRemoveArticle);
  on <SaveArticle>(onSaveArticle);
  }


  void onGetSavedArticles(GetSavedArticles event, Emitter<LocalArticleState> emit) async {
    final articles = await _getSavedArticleUseCase();

    articles.fold(
    (failure) => emit(LocalArticleError(failure.errorMessage)),
    (articles) {
      if(articles.isNotEmpty){
        emit(LocalArticleDone(articles));
      }else if(articles.isEmpty){
        emit(const LocalArticleEmpty('No Saved Articles'));
      }
    }
  );
  }

  void onRemoveArticle(RemoveArticle removeArticle, Emitter<LocalArticleState> emit) async {
    await _removeArticleUseCase(params: removeArticle.article);
    final articles = await _getSavedArticleUseCase();
    // emit(LocalArticleDone(articles));
    articles.fold(
    (failure) => emit(LocalArticleError(failure.errorMessage)),
    (articles) {
      if(articles.isNotEmpty){
        emit(LocalArticleDone(articles));
      }else{
        emit(const LocalArticleError('No articles found'));
      }
    }
  );
  }

  void onSaveArticle( SaveArticle saveArticle, Emitter<LocalArticleState> emit) async {
    await _saveArticleUseCase(params: saveArticle.article);
    final articles = await _getSavedArticleUseCase();
    // emit(LocalArticleDone(articles));

    articles.fold(
    (failure) => emit(LocalArticleError(failure.errorMessage)),
    (articles) {
      if(articles.isNotEmpty){
        emit(LocalArticleDone(articles));
      }else{
        emit(const LocalArticleError('No articles found'));
      }
    }
  );
  }

}