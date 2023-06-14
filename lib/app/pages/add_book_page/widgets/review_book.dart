import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class ReviewBook extends StatelessWidget {
  final double rate;
  final Function(double) setRate;
  final TextEditingController reviewController;

  const ReviewBook(
      {super.key,
      required this.rate,
      required this.setRate,
      required this.reviewController});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: CustomText(
              value: "Avalie o livro",
              fontSize: 18,
              textColor: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Rate(
            iconSize: 25,
            allowHalf: true,
            allowClear: true,
            initialValue: rate,
            readOnly: false,
            onChange: (value) => setRate(value),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Container(
        padding: const EdgeInsets.only(left: 5, top: 8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(20)),
        child: TextField(
          maxLines: null,
          controller: reviewController,
          decoration: const InputDecoration.collapsed(
              hintText: "Comente o livro aqui...", border: InputBorder.none),
        ),
      ),
      const SizedBox(height: 9),
    ]);
  }
}
