import 'package:biblioteca/app/pages/library_page/library_page.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_card.dart';
import 'package:biblioteca/app/widgets/custom_circular_image.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 140,
      content: Column(
        children: [
          SizedBox(
            height: 85,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 10),
                Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: CustomCircularImage(imageUrl: user.imageProfile)),
                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: CustomText(
                    value: user.name,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.28),
            child: CustomButton(
              title: "Ver biblioteca",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LibraryPage(
                    user: user,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
