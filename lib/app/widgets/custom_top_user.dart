import 'package:biblioteca/app/widgets/custom_circular_image.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:flutter/material.dart';

class CustomTopUser extends StatelessWidget {
  final User user;
  final TabController? tabController;
  const CustomTopUser({super.key, required this.user, this.tabController});

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
      height: 200,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
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
                CustomCircularImage(
                  imageUrl: user.imageProfile,
                ),
                const SizedBox(width: 20),
                CustomText(
                  value: "Biblioteca de ${user.name}",
                  textColor: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10, top: 10),
              child: TabBar(
                indicatorColor: Colors.white,
                controller: tabController,
                labelColor: Colors.white,
                indicatorWeight: 0.1,
                tabs: const [
                  Tab(
                    text: 'Lidos',
                  ),
                  Tab(
                    text: 'Quero ler',
                  ),
                  Tab(
                    text: 'Trocas',
                  ),
                  Tab(
                    text: 'Doados',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
