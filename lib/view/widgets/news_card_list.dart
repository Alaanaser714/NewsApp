// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/models/articels_model.dart';
import 'package:newsapp/view/widgets/newscard.dart';

class NewCardList extends StatelessWidget {
  const NewCardList({
    super.key,
    required this.articels,
  });
  final List<ArticelsModel> articels;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articels.length,
      (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: NewsCard(
          articelsModel: articels[index],
        ),
      ),
    ));
  }
}
