class NewsModel {
  int userId;
  int id;
  String title;
  String body;
  NewsModel(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

//to fetch data
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"]);
  }

//to send data
  toJson(NewsModel newsModel) {
    return {
      "userId": newsModel.userId,
      "id": newsModel.id,
      "title": newsModel.title,
      "body": newsModel.body
    };
  }
}

// class NewModel2 {
//   int userId;
//   int id;
//   String title;
//   String body;

//   NewModel2(
//       {required this.userId,
//       required this.id,
//       required this.title,
//       required this.body});

//   //to fetch data from server
//   factory NewModel2.fromJson(json) {
//     return NewModel2(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }

//   //to send data to server
//   toJson(NewModel2 newModel2) {
//     return {
//       'userId': newModel2.userId,
//       'id': newModel2.id,
//       'title': newModel2.title,
//       'body': newModel2.body
//     };
//   }
// }
