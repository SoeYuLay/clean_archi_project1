import 'package:clean_archi_project1/config/app_router.dart';
import 'package:clean_archi_project1/config/app_themes.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/remote/remote_article_cubit.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/pages/saved_article/saved_article.dart';
import 'package:clean_archi_project1/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesCubit>
    (create: (context) => sl<RemoteArticlesCubit>()..getArticles(),
    child: MaterialApp.router(
      title: 'Flutter Demo',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter
    )
    );
  }
}
