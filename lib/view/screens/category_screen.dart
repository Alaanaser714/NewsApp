// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newsapp/view/widgets/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
