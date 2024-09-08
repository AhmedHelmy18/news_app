import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/holde.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22.0),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
