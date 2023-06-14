import 'package:biblioteca/app/utils/extensions/datetime_extension.dart';
import 'package:biblioteca/app/widgets/custom_card.dart';
import 'package:biblioteca/app/widgets/custom_circular_image.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/book_review.dart';
import 'package:flutter/material.dart';

class BookReviwCard extends StatelessWidget {
  final BookReview bookReview;
  const BookReviwCard({super.key, required this.bookReview});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 280,
      content: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 10),
                Center(
                    child: CustomCircularImage(
                        imageUrl: bookReview.author!.imageProfile)),
                const SizedBox(width: 20),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      value: bookReview.author!.name,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    CustomText(value: bookReview.createdAt.customToString())
                  ],
                )
              ],
            ),
            const SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 5, top: 15),
              child: CustomText(
                value: bookReview.review!,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
