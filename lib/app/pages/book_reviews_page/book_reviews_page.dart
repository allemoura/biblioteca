import 'package:biblioteca/app/pages/add_book_page/widgets/custom_top.dart';
import 'package:biblioteca/app/pages/book_reviews_page/book_reviews_page_store.dart';
import 'package:biblioteca/app/widgets/cards/book_review_card.dart';
import 'package:biblioteca/domain/entities/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BookReviewsPage extends StatefulWidget {
  final Book book;
  const BookReviewsPage({super.key, required this.book});

  @override
  State<BookReviewsPage> createState() => _BookReviewsPageState();
}

class _BookReviewsPageState extends State<BookReviewsPage> {
  final BookReviewsPageStore store = BookReviewsPageStore();

  @override
  void initState() {
    store.init(widget.book);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Scaffold(
        body: store.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  CustomTop(
                    book: store.book!,
                  ),
                  Expanded(
                    child: ListView(
                      children: store.book!.reviews
                          .map((review) => Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: BookReviwCard(bookReview: review),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
