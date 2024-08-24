import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/services/news_service.dart';

import 'package:news_app_ui_setup/views/home_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view.dart';

void main() {
  runApp(const NewsApp());
  NewsService().getGeneralNews();
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
