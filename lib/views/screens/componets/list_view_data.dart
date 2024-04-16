import 'package:flutter/material.dart';
import 'package:quotes/utils/routes/quotes_product.dart';

import '../../../utils/routes/routes_utile.dart';

Widget listViewCard(
    {required Size size,
    required BuildContext context,
    required void Function() onSelected}) {
  Map<String, dynamic> quote =
      ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

  return ListView.builder(
    itemCount: allQuotes.length,
    itemBuilder: (BuildContext context, index) => GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MyRoutes.favoritPage,
            arguments: allQuotes[index]);
      },
      child: Container(
        height: size.height * 0.5,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                allQuotes[index].quote,
                maxLines: 5,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              IconButton(
                onPressed: () {
                  allQuotes[index].isLike = !allQuotes[index].isLike;
                  onSelected();
                },
                icon: Icon(
                  allQuotes[index].isLike == false
                      ? Icons.favorite_border_rounded
                      : Icons.favorite_rounded,
                  color: Colors.red,
                ),
              ),
              Text(
                allQuotes[index].author,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
