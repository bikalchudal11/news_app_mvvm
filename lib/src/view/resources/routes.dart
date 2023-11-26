import 'package:flutter/material.dart';
import 'package:news_app_mvvm/src/view/screens/news.dart';
import 'package:news_app_mvvm/src/view/screens/news_desc.dart';
import 'package:news_app_mvvm/src/view/screens/splash.dart';

class Routes {
  //by using static we can access that variable without creating the object for the class
  static const String splash = '/';
  static const String newsScreen = '/news';
  static const String newsDesc = '/newsDesc';
}

class AppRouter {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/news':
        return MaterialPageRoute(builder: (_) => const News());
      case '/newsDesc':
        return MaterialPageRoute(builder: (_) => const NewsDesc());
    }

    return MaterialPageRoute(builder: (_) => const DefaultRoute());
  }
}

class DefaultRoute extends StatelessWidget {
  const DefaultRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Invalid Route"),
      ),
    );
  }
}

// pushReplacementNamed(String route, BuildContext context) {
//   return Navigator.of(context).pushReplacementNamed(route);
// }

// pushReplacement(BuildContext context, dynamic route) {
//   return Navigator.of(context)
//       .pushReplacement(MaterialPageRoute(builder: (context) => route));
// }





// class Routes {
//   static const String splashRoute = '/';
// }

// class RouteGenerator {
//   static appRouter(RouteSettings settings, BuildContext context) {
//     switch (settings.name) {
//       case '/':
//         return Navigator.of(context).pushReplacement(
//           MaterialPageRoute(
//             builder: (context) => const SplashScreen(),
//           ),
//         );
//     }
//     return MaterialPageRoute(builder: (context) => const SplashScreen());
//   }
// }