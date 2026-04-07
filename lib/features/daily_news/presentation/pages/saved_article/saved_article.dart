import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_bloc.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_event.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_state.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/widgets/article_tile.dart';
import 'package:clean_archi_project1/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class SavedArticles extends HookWidget {
  const SavedArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LocalArticleBloc>()..add(GetSavedArticles()),
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody()
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      leading: Builder(
        builder: (context)=> GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => _onBackButtonTapped(context),
          child: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
        ),
    ),title: const Text('Saved Articles',style: TextStyle(color: Colors.black),),
    );
  }

  Widget _buildBody(){
    return BlocBuilder<LocalArticleBloc,LocalArticleState>
    (
      builder: (context,state){
        if(state is LocalArticleLoading){
          return const Center(child: CircularProgressIndicator());
        }else if(state is LocalArticleDone){
          return _buildArticlesList(state.articles);
        }
        return Container();
      });
  }

  Widget _buildArticlesList(List<Article> articles) {
    if(articles.isEmpty){
      return const Center(
        child: Text('NO SAVED ARTICLES',
          style: TextStyle(color: Colors.black)));
    }
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index){
        return ArticleWidget(
          article: articles[index],
          isRemovable: true,
          onRemove: (article) => _onRemoveArticle(context, article),
          onArticlePressed: (article) => _onArticlePressed(context, article),
          );
      },
      );
  }

  void _onBackButtonTapped(BuildContext context) {
    Navigator.pop(context);
  }

  void _onRemoveArticle(BuildContext context, Article article) {
    BlocProvider.of<LocalArticleBloc>(context).add(RemoveArticle(article));
  }

  void _onArticlePressed(BuildContext context, Article article) {
    context.push('/ArticleDetails', extra: article);
  }
}