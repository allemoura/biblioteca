import 'package:flutter/material.dart';

class CustomCircularImage extends StatelessWidget {
  final String? imageUrl;
  const CustomCircularImage({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final imageDefault = Image.asset("assets/images/image_profile_default.png");

    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
              image:
                  (imageUrl != null ? Image.network(imageUrl!) : imageDefault)
                      .image),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
