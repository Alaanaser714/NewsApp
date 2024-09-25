// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:newsapp/view/screens/home_page.dart';

void main() {
  runApp(const NewsApp());
}



class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
