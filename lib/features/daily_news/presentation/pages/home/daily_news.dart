import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/widgets/article_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(context),
      body: _buildBody()
    );
  }

  _buildAppbar(BuildContext context) {
    return AppBar(
        title: const Text('Daily News',
            style: TextStyle(
                color: Colors.black),
      ),
      actions: [
        GestureDetector(
          onTap: () => _onShowSavedArticles(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.bookmark_border_outlined, color: Colors.black,),
          ),
        )
      ],
      );
  }

  _buildBody(){
    return BlocBuilder<RemoteArticlesBloc,RemoteArticleState>
    (
      builder: (_,state){
        if(state is RemoteArticleLoading){
          return const Center(child: CircularProgressIndicator());
        }
        if (state is RemoteArticleError) {
          return const Center(child:Icon(Icons.refresh));
        }
        if(state is RemoteArticleDone){
          return ListView.builder(
            itemBuilder: (context, index){
              return GestureDetector(
                onTap: () => _onArticlePressed(context,state.articles![index]),
                child: ArticleWidget(article: state.articles[index],),
              );
            },
            itemCount: state.articles.length,);
        }
        return const SizedBox();
      });
  }

  void _onArticlePressed(BuildContext context,Article article){
    // Navigator.pushNamed(context, '/ArticleDetails',arguments: article);
    context.go('/ArticleDetails', extra: article);
  }

  void _onShowSavedArticles(BuildContext context) {
    // Navigator.pushNamed(context, '/SavedArticles');
    context.push('/SavedArticles');
  }
}
