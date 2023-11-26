import 'package:flutter/material.dart';
import 'package:news_app_mvvm/src/model/news_model.dart';
import 'package:news_app_mvvm/src/view_model/repository/news_repository.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<NewsModel> newsModel = [];
  @override
  void initState() {
    _fetchNews();
    super.initState();
  }

  _fetchNews() {
    NewsRepository.getNews().then((value) {
      newsModel = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "News App",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: newsModel.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  newsModel[index].title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(newsModel[index].body),
              ),
            );
          },
        ),
      ),
    );
  }
}
