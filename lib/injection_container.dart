import 'package:clean_archi_project1/features/auth/data/datasources/remote/firebase_auth_datasource.dart';
import 'package:clean_archi_project1/features/auth/data/datasources/remote/firebase_auth_google_service.dart';
import 'package:clean_archi_project1/features/auth/data/repository/auth_repo_impl.dart';
import 'package:clean_archi_project1/features/auth/domain/repository/auth_repo.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/get_current_user.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/google_sign_up.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/reset_password.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/sign_in_user.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/sign_out_user.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/sign_up_user.dart';
import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc.dart';
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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  // sl.registerSingleton<AppDatabase>(database);
  sl.registerSingleton<ArticleDao>(database.articleDao);

  //Dio
  sl.registerSingleton<Dio>(Dio());

  //firebase
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  //Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl<Dio>()));

  sl.registerSingleton<FirebaseAuthDatasource>(FirebaseAuthDatasource(sl<FirebaseAuth>()));

  sl.registerSingleton<FirebaseAuthGoogleService>(FirebaseAuthGoogleService());
  
  //Repository
  // sl.registerSingleton<ArticleRepository>(FakeArticleRepositoryImpl());
  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl<NewsApiService>(),sl<ArticleDao>()));

  sl.registerSingleton<AuthRepository>(AuthRepoImpl(sl<FirebaseAuthDatasource>(),sl<FirebaseAuthGoogleService>()));

  //UseCases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl<ArticleRepository>()));

  sl.registerSingleton<GetSavedArticleUseCase>(GetSavedArticleUseCase(sl<ArticleRepository>()));

  sl.registerSingleton<SaveArticleUseCase>(SaveArticleUseCase(sl<ArticleRepository>()));

  sl.registerSingleton<RemoveArticleUseCase>(RemoveArticleUseCase(sl<ArticleRepository>()));

  sl.registerSingleton<GetCurrentUserUseCase>(GetCurrentUserUseCase(sl<AuthRepository>()));

  sl.registerSingleton<SignInUserUseCase>(SignInUserUseCase(sl<AuthRepository>()));

  sl.registerSingleton<SignUpUserUseCase>(SignUpUserUseCase(sl<AuthRepository>()));

  sl.registerSingleton<SignOutUserUseCase>(SignOutUserUseCase(sl<AuthRepository>()));

  sl.registerSingleton<ResetPasswordUseCase>(ResetPasswordUseCase(sl<AuthRepository>()));

  sl.registerSingleton<SignUpwithGoogleUseCase>(SignUpwithGoogleUseCase(sl<AuthRepository>()));

  //Blocs
  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl<GetArticleUseCase>()));

  sl.registerFactory<LocalArticleBloc>(() => LocalArticleBloc(sl<GetSavedArticleUseCase>(), sl<SaveArticleUseCase>(), sl<RemoveArticleUseCase>()));

  sl.registerFactory<AuthBloc>(() => AuthBloc(sl<GetCurrentUserUseCase>(), sl<SignInUserUseCase>(), sl<SignUpUserUseCase>(), sl<SignOutUserUseCase>(), sl<ResetPasswordUseCase>(), sl<SignUpwithGoogleUseCase>()));
}
