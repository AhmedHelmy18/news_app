import 'package:dio/dio.dart';

class NewsService {
  final Dio dio = Dio();

  getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=869ec58d50c84ec0a710cc1064ee1dc3&country=eg&category=general');
    Map<String,dynamic> jsonData = response.data;
    
    List<dynamic> articles = jsonData['articles'];

    for (var article in articles){
      print(article['author']);
    }
  }
}