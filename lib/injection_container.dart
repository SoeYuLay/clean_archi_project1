import 'package:clean_archi_project1/features/daily_news/data/data_sources/local/DAO/article_dao.dart';
import 'package:clean_archi_project1/features/daily_news/data/data_sources/local/app_database.dart';
import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clean_archi_project1/features/daily_news/data/repository/article_repository_impl.dart';
// import 'package:clean_archi_project1/features/daily_news/data/data_sources/remote/repository/fake_article_repository_impl.dart';
import 'package:clean_archi_project1/features/daily_news/domain/repository/article_repository.dart';
import 'package:clean_archi_project1/features/daily_news/domain/usecases/get_article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/usecases/get_saved_article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/usecases/remove_article.dart';
import 'package:clean_archi_project1/features/daily_news/domain/usecases/save_article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_bloc.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  // sl.registerSingleton<AppDatabase>(database);
  sl.registerSingleton<ArticleDao>(database.articleDao);

  //Dio
  sl.registerSingleton<Dio>(Dio());

  //Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl<Dio>()));

  // sl.registerSingleton<ArticleRepository>(FakeArticleRepositoryImpl());
  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl<NewsApiService>(),sl<ArticleDao>()));

  //UseCases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl<ArticleRepository>()));

  sl.registerSingleton<GetSavedArticleUseCase>(GetSavedArticleUseCase(sl<ArticleRepository>()));

  sl.registerSingleton<SaveArticleUseCase>(SaveArticleUseCase(sl<ArticleRepository>()));

  sl.registerSingleton<RemoveArticleUseCase>(RemoveArticleUseCase(sl<ArticleRepository>()));

  //Blocs
  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl<GetArticleUseCase>()));

  sl.registerFactory<LocalArticleBloc>(() => LocalArticleBloc(sl<GetSavedArticleUseCase>(), sl<SaveArticleUseCase>(), sl<RemoveArticleUseCase>()));
}
