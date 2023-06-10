import 'package:biblioteca/app/pages/add_book_page/add_book_page.dart';
import 'package:biblioteca/app/utils/extensions/datetime_extension.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_card.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/book.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final Book book;
  const BookCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 220,
      content: SizedBox(
        child: Row(
          children: [
            const SizedBox(width: 22),
            Image.network(
              book.cover!,
              width: 80,
              height: 120,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 30),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 35),
                  CustomText(
                    value: book.title,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 5),
                  CustomText(
                    value: "Autor(a): ${book.author}",
                  ),
                  CustomText(
                    value:
                        "Data publicação: ${book.releaseDate.customToString()}",
                  ),
                  if (book.isbn10 != null)
                    CustomText(
                      value: "ISBN-10: ${book.isbn10}",
                    ),
                  if (book.isbn13 != null)
                    CustomText(
                      value: "ISBN-13: ${book.isbn13}",
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 15),
                    child: CustomButton(
                      width: 200,
                      title: "Adicionar a biblíoteca",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddBookPage(book: book)));
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
