import 'package:biblioteca/app/pages/raffles_history_page/raffles_history_page_store.dart';
import 'package:biblioteca/app/widgets/cards/raffle_card.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RafflesHistoryPage extends StatefulWidget {
  const RafflesHistoryPage({super.key});

  @override
  State<RafflesHistoryPage> createState() => _RafflesHistoryPageState();
}

class _RafflesHistoryPageState extends State<RafflesHistoryPage> {
  final RafflesHistoryPageStore store = RafflesHistoryPageStore();

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
            value: "Histórico de sorteios",
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
