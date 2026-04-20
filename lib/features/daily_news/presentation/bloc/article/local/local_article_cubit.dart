import 'package:clean_archi_project1/features/daily_news/domain/usecases/get_saved_article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/usecases/remove_article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/usecases/save_article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalArticleCubit extends Cubit<LocalArticleState> {
  final GetSavedArticleUseCase _getSavedArticleUseCase;
  final SaveArticleUseCase _saveArticleUseCase;
  final RemoveArticleUseCase _removeArticleUseCase;

  LocalArticleCubit(
    this._getSavedArticleUseCase,
    this._saveArticleUseCase,
    this._removeArticleUseCase,
  ) : super(const LocalArticleLoading());

  Future<void> getSavedArticles() async {
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

  Future<void> onRemoveArticle(removeArticle) async {
    await _removeArticleUseCase(params: removeArticle);
    final articles = await _getSavedArticleUseCase();
    
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

  Future<void> onSaveArticle(saveArticle) async {
    await _saveArticleUseCase(params: saveArticle);
    final articles = await _getSavedArticleUseCase();

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