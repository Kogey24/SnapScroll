class imageModel {
  int id;
  String url;
  String title;

  imageModel({required this.id, required this.url, required this.title});

  imageModel.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      url = json['url'],
      title = json['title'];
}
