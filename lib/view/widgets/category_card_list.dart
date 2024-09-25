// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/view/widgets/categorycard.dart';

class CategoryCardList extends StatelessWidget {
  const CategoryCardList({
    super.key,
  });
  final List<CategoryModel> category = const [
    CategoryModel(
      image: 'assets/business.avif',
      title: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      title: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      title: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      title: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      title: 'Technology',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      title: 'Sports',
    ),
    CategoryModel(
      image: 'assets/general.avif',
      title: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) =>  CategoryCard(
          categoryModel:category[index] 
        ),
      ),
    );
  }
}
