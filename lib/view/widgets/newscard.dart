// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articels_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.articelsModel,
  });
  final ArticelsModel articelsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: CachedNetworkImage(
    height: 200,
    width: double.infinity,
    fit: BoxFit.cover,
    imageUrl: articelsModel.image??"",
    placeholder: (context, url) => Center(
      child: CircularProgressIndicator(),  
    ),
    errorWidget: (context, url, error) => Icon(
      Icons.error,  
      size: 50,   
      color: Colors.red,  
    ),
  ),
),
const SizedBox(
  height: 10,
),

        Text(
          articelsModel.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articelsModel.desc ?? "",
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
