// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articels_model.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/view/widgets/news_card_list.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({ 
    super.key, required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticelsModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewCardList(
              articels: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops  was an error, try later'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
