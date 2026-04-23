import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_bloc.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/bloc/article/local/local_article_event.dart';
import 'package:clean_archi_project1/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ArticleDetailsView extends HookWidget {
  final Article article;
  const ArticleDetailsView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LocalArticleBloc>(),
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        floatingActionButton: _buildFloatingActionButton(),
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
    ));
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildArticleTitleAndDate(),
          _buildArticleImage(),
          _buildArticleContent(),
          ],
      ),
    );
  }

  Widget _buildArticleTitleAndDate() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              const Icon(Icons.calendar_today_outlined, size: 16),
              const SizedBox(width: 4),
              Text(
                article.publishedAt,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildArticleImage(){
    return Container(
      height: 250,
      width: double.maxFinite,
      margin: const EdgeInsets.only(top: 14),
      child: Image.network(
        article.urlToImage,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildArticleContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '${article.description}\n\n${article.content}',
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Builder(
      builder: (context) {
        return FloatingActionButton(
          onPressed: () => _onFloatingActionButtonPressed(context),
          child: const Icon(Icons.bookmark, color: Colors.white, ),
        );
      }
    );
  }

  void _onBackButtonTapped(BuildContext context) {
    Navigator.pop(context);
  }

  void _onFloatingActionButtonPressed(BuildContext context) {
    BlocProvider.of<LocalArticleBloc>(context).add(SaveArticle(article));
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     backgroundColor: Colors.black,
    //     content: Text('Article saved successfully!')),
    // );
  }
}
