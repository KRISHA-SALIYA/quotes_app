import 'package:flutter/material.dart';
import 'package:quotes/utils/routes/routes_utile.dart';
import 'package:quotes/views/screens/detail_page.dart';
import 'package:quotes/views/screens/favorit_page.dart';
import 'package:quotes/views/screens/home_page.dart';
import 'package:quotes/views/screens/splesh_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.splashScreen: (context) => const SplashScreen(),
        MyRoutes.homePage: (context) => const HomePage(),
        MyRoutes.detailPage: (context) => const DetailPage(),
        MyRoutes.favoritPage: (context) => const FavoritPAge()
      },
    );
  }
}
