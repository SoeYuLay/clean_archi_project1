import 'package:clean_archi_project1/config/app_router.dart';
import 'package:clean_archi_project1/config/app_themes.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:clean_archi_project1/firebase_options.dart';
import 'package:clean_archi_project1/injection_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>
    (create: (context) => sl()..add(const GetArticles()),
    child: MaterialApp.router(
      title: 'Flutter Demo',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter
    ));
  }
}
