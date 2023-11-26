import 'package:flutter/material.dart';

class NewsDesc extends StatelessWidget {
  const NewsDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
        centerTitle: true,
      ),
      body: const Center(
        child: Card(
          child: ListTile(
            title: Text("This is tittle"),
          ),
        ),
      ),
    );
  }
}
