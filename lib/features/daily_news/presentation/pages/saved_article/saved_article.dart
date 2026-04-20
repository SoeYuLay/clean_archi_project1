import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_cubit.dart';
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
      create: (_) => sl<LocalArticleCubit>()..getSavedArticles(),
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
    return BlocBuilder<LocalArticleCubit,LocalArticleState>
    (
      builder: (context,state){
        // if(state is LocalArticleLoading){
        //   return const Center(child: CircularProgressIndicator());
        // }else if(state is LocalArticleDone){
        //   return _buildArticlesList(state.articles);
        // }else if(state is LocalArticleEmpty){
        //   return Center(
        //     child: Text(state.emptyMessage,
        //       style: const TextStyle(color: Colors.black)));
        // }
        return state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          done: (articles) => _buildArticlesList(articles),
          error: (error) => Center(
            child: Text(
              error,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          empty: (emptyMessage) => Center(
            child: Text(
              emptyMessage,
              style: const TextStyle(color: Colors.black),
            ),
          )
        );

        // return Container();
      });
  }

  Widget _buildArticlesList(List<Article> articles) {
    
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
    BlocProvider.of<LocalArticleCubit>(context).onRemoveArticle(article);
  }

  void _onArticlePressed(BuildContext context, Article article) {
    context.push('/ArticleDetails', extra: article);
  }
}