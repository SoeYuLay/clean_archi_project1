import 'package:clean_archi_project1/features/daily_news/domain/usecases/get_article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteArticlesCubit extends Cubit<RemoteArticleState> {
  final GetArticleUseCase _getArticleUseCase;
  RemoteArticlesCubit(this._getArticleUseCase) : super(const RemoteArticleLoading());

  Future<void> getArticles() async {
    final dataState = await _getArticleUseCase();

    dataState.fold(
      (failure) => emit(RemoteArticleError(failure.errorMessage)),
      (articles) {
        if(articles.isNotEmpty){
          emit(RemoteArticleDone(articles));
        }else{
          emit(const RemoteArticleError('No articles found'));
        }
      }
    );
  }
}