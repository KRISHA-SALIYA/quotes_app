import 'package:flutter/cupertino.dart';
import 'package:quotes/views/screens/favorit_page.dart';
import 'package:quotes/views/screens/home_page.dart';
import 'package:quotes/views/screens/splesh_page.dart';

class MyRoutes {
  static String splashScreen = '/';
  static String homePage = 'home_page';
  static String detailPage = 'detail_page';
  static String favoritPage = 'Favorit_Page';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
    homePage: (context) => const HomePage(),
    favoritPage: (context) => const FavoritPAge(),
    // detailPage: (context) => const DetailPage(),
  };

  static List<Map<String, dynamic>> image = [
    {
      'image':
          'https://img.freepik.com/free-photo/abstract-design-with-colorful-patterns-nature-leaf-generated-by-ai_188544-15573.jpg',
      'name': 'Art',
    },
    {
      'image':
          'https://rukminim2.flixcart.com/image/850/1000/kxp0mfk0/poster/p/o/w/medium-art-galaxy-attitude-joker-2147-original-imaga3dm86tv9vtx.jpeg',
      'name': 'Attitude',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT79Ns0dfxwiBrLrYjoVMI0cGy0wzFSwn8IXS-QJ1cQ7DebyUM2jda4k3gzZgdUQZI7VRU&usqp=CAU',
      'name': 'Business',
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2018/01/05/07/16/balance-3062272_640.jpg',
      'name': 'Courage',
    },
    {
      'image': 'https://www.mooc.org/hubfs/cybersecurity-computer-science.jpg',
      'name': 'Computers',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYqSVih2_TM5iD07XXlbyNe_WdgyZGJpuIpQ&usqp=CAU',
      'name': 'Education',
    },
  ];
}
