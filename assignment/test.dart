class DataModel {
  int id;
  String title;
  DataModel({required this.id, required this.title});

  factory DataModel.fromJson(json) {
    return DataModel(id: json["id"], title: json["title"]);
  }
}
