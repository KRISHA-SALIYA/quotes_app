import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes/modeles/quotes_model_class.dart';
import 'package:quotes/utils/color_utils.dart';

class FavoritPAge extends StatefulWidget {
  const FavoritPAge({super.key});

  @override
  State<FavoritPAge> createState() => _FavoritPAgeState();
}

class _FavoritPAgeState extends State<FavoritPAge> {
  int _currentIndex = 0;
  Color fontColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    QuoteData q1 = ModalRoute.of(context)!.settings.arguments as QuoteData;

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
                  "https://rukminim2.flixcart.com/image/850/1000/kxxl9jk0/poster/b/g/l/small-1tnnqyns-leaves-light-green-background-wallpaper-poster-vp-original-imaga9xskywbqaxv.jpeg?q=20&crop=false",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: size.width * 0.07,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.2,
                  ),
                  Text(
                    "Favorit Page",
                    style: GoogleFonts.adamina(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * 0.3,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: const EdgeInsets.all(15),
                child: Text(
                  q1.quote,
                  style: GoogleFonts.akayaTelivigala(
                    color: fontColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Visibility(
                visible: _currentIndex == 1,
                child: Container(
                  height: size.height * 0.4,
                  width: size.width * 3,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              fontColors.length,
                              (index) => GestureDetector(
                                    onTap: () {
                                      fontColor = fontColors[index];
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      margin: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        color: fontColors[index],
                                      ),
                                    ),
                                  )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: _currentIndex == 2,
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 3,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              Visibility(
                visible: _currentIndex == 3,
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 3,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              _currentIndex == 0 ? const Spacer() : const Text(""),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Container(
                      height: size.height * 0.07,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white.withOpacity(0.3),
                      ),
                      child: IconButton(
                        iconSize: 40,
                        icon: const Icon(Icons.gradient),
                        color: Colors.white.withOpacity(0.3),
                        onPressed: () {
                          _currentIndex = 1;
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    //       Container(
                    //         height: size.height * 0.07,
                    //         width: size.width * 0.3,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(50),
                    //           color: Colors.white.withOpacity(0.3),
                    //         ),
                    //         child: IconButton(
                    //           iconSize: 40,
                    //           icon: const Icon(Icons.text_fields),
                    //           color: Colors.white,
                    //           onPressed: () {
                    //             _currentIndex = 2;
                    //             setState(() {});
                    //           },
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: size.width * 0.03,
                    //       ),
                    //       Container(
                    //         height: size.height * 0.07,
                    //         width: size.width * 0.3,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(50),
                    //           color: Colors.white.withOpacity(0.3),
                    //         ),
                    //         child: IconButton(
                    //           iconSize: 40,
                    //           icon: const Icon(Icons.share),
                    //           color: Colors.white,
                    //           onPressed: () {
                    //             _currentIndex = 3;
                    //             setState(() {});
                    //           },
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: size.height * 0.02,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
