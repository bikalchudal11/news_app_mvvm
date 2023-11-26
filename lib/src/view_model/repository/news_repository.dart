import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_mvvm/src/model/news_model.dart';

// var client = http.Client();
const String newsApi = "https://jsonplaceholder.typicode.com/posts";

class NewsRepository {
  static Future<List<NewsModel>> getNews() async {
    var url = Uri.parse(newsApi);
    try {
      var response = await http.get(url);
      List<dynamic> myData = jsonDecode(response.body);
      return myData.map((element) => NewsModel.fromJson(element)).toList();
    } catch (e) {
      print("Error: $e");
      return [];
    }
  }
}
