import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes/utils/routes/quotes_product.dart';

Widget gridViewCard(
    {required Size size,
    required BuildContext context,
    required void Function() onSelected}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Scrollbar(
      thickness: 10,
      interactive: true,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 5,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: allQuotes.length,
        itemBuilder: (context, index) => Card(
          color: Colors.black.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  allQuotes[index].quote,
                  maxLines: 3,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
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
                  "- ${allQuotes[index].author}",
                  style: GoogleFonts.adamina(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
