import 'package:biblioteca/app/pages/raffles_list_page/raffles_list_page_store.dart';
import 'package:biblioteca/app/widgets/cards/raffle_card.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RafflesListPage extends StatefulWidget {
  const RafflesListPage({super.key});

  @override
  State<RafflesListPage> createState() => _RafflesListPageState();
}

class _RafflesListPageState extends State<RafflesListPage> {
  final RafflesListPageStore store = RafflesListPageStore();

  @override
  void initState() {
    store.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const CustomText(
            value: "Sorteios",
            textColor: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: store.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: store.raffles
                    .map((raffle) => Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: RaffleCard(raffle: raffle),
                        ))
                    .toList(),
              ),
      ),
    );
  }
}
