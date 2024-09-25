import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/view/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CategoryScreen(
              category: categoryModel.title,
            );
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(categoryModel.image), fit: BoxFit.fill)),
          child: Center(
              child: Text(
            categoryModel.title,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
