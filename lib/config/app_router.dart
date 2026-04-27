import 'package:clean_archi_project1/features/auth/presentation/pages/sign_in.dart';
import 'package:clean_archi_project1/features/auth/presentation/pages/sign_up.dart';
import 'package:clean_archi_project1/features/auth/presentation/pages/splash_screen.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/pages/article_detail/article_detail.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/pages/saved_article/saved_article.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/SignUp',
  routes: [
    GoRoute(
      // path: '/',
      path: '/DailyNews',
      builder: (context, state) => const DailyNews(),
    ),
    GoRoute(
      path: '/SavedArticles',
      builder: (context, state) => const SavedArticles(),
    ),
    GoRoute(
      path: '/ArticleDetails',
      builder: (context, state) {
        final article = state.extra as Article;
        return ArticleDetailsView(article: article);
      },
    ),
    GoRoute(
      path: '/SignUp',
      builder: (context, state) {
        return const SignUp();
      },
    ),
    GoRoute(
      path: '/SignIn',
      // path: '/',
      builder: (context, state) {
        return const SignIn();
      },
    ),
    GoRoute(
      path: '/Splash',
      // path: '/',
      builder: (context, state){
        return const SplashScreen();
      }
      )
  ],
);
