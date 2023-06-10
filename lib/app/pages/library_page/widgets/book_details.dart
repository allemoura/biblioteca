import 'package:biblioteca/app/pages/add_book_page/add_book_page.dart';
import 'package:biblioteca/domain/entities/book.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class BookDetails extends StatelessWidget {
  final Book book;
  final bool? isRead;
  const BookDetails({super.key, required this.book, this.isRead});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AddBookPage(
                    book: book,
                    isRead: isRead,
                  ))),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.network(
          book.cover!,
          height: 80,
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
