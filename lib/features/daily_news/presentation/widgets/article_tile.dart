import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_archi_project1/features/daily_news/domain/entities/article.dart';
import 'package:clean_archi_project1/features/daily_news/presentation/pages/article_detail/article_detail.dart';
import 'package:flutter/material.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;
  const ArticleWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openArticleDetails(context),
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 10, end: 10, top: 5, bottom: 5),
        height: MediaQuery.of(context).size.width / 2.2,
        child: Row(
          children: [
            _buildImage(context),
            _buildTitleAndDescription(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: article.urlToImage,
      imageBuilder: (context, imageProvider) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 14),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            width: MediaQuery.of(context).size.width/3,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
          ),
        ),
        ),
      ),
      progressIndicatorBuilder: (context, url, downloadProgress) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 14),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            width: MediaQuery.of(context).size.width/3,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: const Center(child: CircularProgressIndicator()),
          ),
        )
      ),
      errorWidget: (context, url, error) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 14),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            width: MediaQuery.of(context).size.width/3,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: const Center(child: Icon(Icons.error)),
          ),
        )
      ));
  }

  Widget _buildTitleAndDescription() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.black
              ),
            ),

            //Description
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  article.description,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Colors.black
                  ),
                ),
              )
            ),
            
            Row(
              children: [
                const Icon(Icons.timeline_outlined, size: 16),
                const SizedBox(width: 4),
                Text(
                  article.publishedAt,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black
                  ),
                ),
              ],
              ),
            
          ],),
      ),
    );
  }

  void _openArticleDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ArticleDetailsView(article: article),
      ),
    );
  }
}
