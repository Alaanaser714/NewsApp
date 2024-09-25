class ArticelsModel {
  final String? title;
  final String ?image;
  final String? desc;

  ArticelsModel({required this.title, required this.image, required this.desc});

  factory ArticelsModel.fromJson(Map<String, dynamic> json) {
    return ArticelsModel(
      title: json['title'],
      image: json['urlToImage'],
      desc: json['description'],
    );
  }
}
