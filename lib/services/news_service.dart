import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=869ec58d50c84ec0a710cc1064ee1dc3');
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articleList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articleList.add(articleModel);
    }
  }
}
