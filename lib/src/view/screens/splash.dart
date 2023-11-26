import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app_mvvm/src/view/resources/media.dart';
import 'package:news_app_mvvm/src/view/resources/routes.dart';
import 'package:news_app_mvvm/src/view/resources/text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _next();
  }

  _next() {
    // Future Delayed doesn't require to dispose it as in timer
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(Routes.newsScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              appName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bananaImg),
                ),
              ),
            ),
            // Image.network(splashImage),
            const Text(appDesc),
            const SizedBox(
              height: 10,
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
