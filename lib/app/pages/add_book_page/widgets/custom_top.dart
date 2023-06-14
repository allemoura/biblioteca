import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/book.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class CustomTop extends StatelessWidget {
  final Book book;
  const CustomTop({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(40);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius:
            const BorderRadius.only(bottomLeft: radius, bottomRight: radius),
      ),
      width: MediaQuery.of(context).size.width,
      height: 140,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 28,
              ),
            ),
            const SizedBox(width: 20),
            Image.network(
              book.cover!,
              height: 80,
            ),
            const SizedBox(width: 20),
            Flexible(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  children: [
                    CustomText(
                      value: book.title,
                      textColor: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    Rate(
                      iconSize: 25,
                      initialValue: sumStars(),
                      readOnly: true,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  double sumStars() {
    if (book.reviews.isEmpty) return 0;
    final stars = book.reviews.map((e) => e.stars);

    double sumStars = 0;
    for (final star in stars) {
      sumStars += star;
    }
    return sumStars / stars.length;
  }
}
