import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService().getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
          )
        : NewsListView(
            articles: articles,
          );
  }
}
