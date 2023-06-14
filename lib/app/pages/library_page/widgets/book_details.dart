import 'package:biblioteca/app/pages/add_book_page/add_book_page.dart';
import 'package:biblioteca/app/pages/book_to_exchanged_page/book_to_exchanged_page.dart';
import 'package:biblioteca/domain/entities/book.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class BookDetails extends StatelessWidget {
  final Book book;
  final bool? isRead;
  final bool isLibrary;
  final bool exchanged;
  const BookDetails(
      {super.key,
      required this.book,
      this.isRead,
      this.isLibrary = false,
      this.exchanged = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: exchanged
          ? null
          : () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => isLibrary
                      ? BookToExchangedPage(
                          book: book,
                        )
                      : AddBookPage(
                          book: book,
                          isRead: isRead,
                        ),
                ),
              ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.network(
          book.cover!,
          height: 160,
          width: 110,
        ),
        const SizedBox(height: 10),
        const Rate(
          iconSize: 25,
          initialValue: 0,
          readOnly: true,
        ),
      ]),
    );
  }
}
