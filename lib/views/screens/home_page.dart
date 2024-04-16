import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes/modeles/quotes_model_class.dart';
import 'package:quotes/utils/routes/quotes_product.dart';
import 'package:quotes/utils/routes/routes_utile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showRandomQuote() {
    //Random  => dart:math
    Random r = Random();

    String category = "education";

    List<QuoteData> l = allQuotes
        .where(
          (element) => element.category == category,
        )
        .toList();

    QuoteData q = l[r.nextInt(l.length)];

    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text("😊 Quotes 😊 "),
        contentPadding: const EdgeInsets.all(16),
        children: [
          Text(q.quote),
        ],
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        showRandomQuote();
      },
    );
    super.initState();
  }

  bool _isList = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://media.istockphoto.com/id/1623303770/photo/creative-background-image-is-blurred-evening-city-lights-and-light-snowfall.jpg?b=1&s=612x612&w=0&k=20&c=--I6QisPR7yGmgujOI2co8U3FIK5tBv6xAjMup67ghc=",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                "Home Page",
                style: GoogleFonts.adamina(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: MyRoutes.image.length,
                  itemBuilder: (BuildContext context, index) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.detailPage,
                          arguments: MyRoutes.image[index]);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            MyRoutes.image[index]['image'],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            MyRoutes.image[index]['name'],
                            style: GoogleFonts.adamina(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
