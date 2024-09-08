import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        return NewsListView(
          articles: snapshot.data ?? [],
        );
      },
      future: NewsService().getNews(),
    );
    // return isLoading
    //     ? SliverFillRemaining(
    //         hasScrollBody: false,
    //         child: Center(
    //           child: CircularProgressIndicator(
    //             color: Colors.blue,
    //           ),
    //         ),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsListView(
    //             articles: articles,
    //           )
    //         : SliverFillRemaining(
    //             hasScrollBody: false,
    //             child: Text('oops there was an error, try later'),
    //           );
  }
}
