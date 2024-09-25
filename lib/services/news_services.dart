// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:newsapp/models/articels_model.dart';

class NewsServices {
  final Dio dio;
  

  NewsServices({required this.dio});

  Future<List<ArticelsModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=4eb8cd68c4ea402abf77c2027ebbb05b&category=$category");

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articels = jsonData['articles'];

      List<ArticelsModel> articelsList = [];

      for (var articel in articels) {
        ArticelsModel articelsModel = ArticelsModel.fromJson(articel);
        articelsList.add(articelsModel);
      }
      return articelsList;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
