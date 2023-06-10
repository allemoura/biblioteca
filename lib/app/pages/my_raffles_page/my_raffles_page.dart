import 'package:biblioteca/app/pages/my_raffles_page/my_raffles_page_store.dart';
import 'package:biblioteca/app/widgets/cards/raffle_card.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyRafflesPage extends StatefulWidget {
  const MyRafflesPage({super.key});

  @override
  State<MyRafflesPage> createState() => _MyRafflesPageState();
}

class _MyRafflesPageState extends State<MyRafflesPage> {
  final MyRafflesPageStore store = MyRafflesPageStore();

  @override
  void initState() {
    store.init(UserModel.of(context).userData!.id!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const CustomText(
            value: "Meus Sorteios",
            textColor: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, size: 40),
        ),
        body: store.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: store.raffles
                    .map((raffle) => Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child:RaffleCard(raffle: raffle)))
                    .toList(),
              ),
      ),
    );
  }
}
