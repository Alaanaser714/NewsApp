// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:newsapp/view/widgets/category_card_list.dart';
import 'package:newsapp/view/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: CategoryCardList()),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: 20,
                )),

                NewsListViewBuilder(category:"general",)
                
              
              ],
            )));
  }
}
