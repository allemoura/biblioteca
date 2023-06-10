import 'package:biblioteca/app/widgets/custom_circular_image.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  final UserModel model;
  const HomeDrawer({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Row(children: [
              CustomCircularImage(
                imageUrl: model.userData?.imageProfile,
              ),
              const SizedBox(width: 10),
              CustomText(
                value: model.userData?.name ?? "",
                fontWeight: FontWeight.bold,
                textColor: Colors.white,
              )
            ]),
          ),
          ListTile(
            title: const CustomText(
              value: "Meus Dados",
              fontSize: 18,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const CustomText(
              value: "Minhas Trocas",
              fontSize: 18,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const CustomText(
              value: "Sair",
              fontSize: 18,
            ),
            onTap: () {
              model.signOut();
            },
          ),
        ],
      ),
    );
  }
}
