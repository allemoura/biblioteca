import 'package:biblioteca/app/pages/my_raffles_page/my_raffles_page.dart';
import 'package:biblioteca/app/pages/raffles_history_page/raffles_history_page.dart';
import 'package:biblioteca/app/pages/raffles_list_page/raffles_list_page.dart';
import 'package:biblioteca/app/widgets/cards/raffle_itens_card.dart';
import 'package:flutter/material.dart';

class RafflesPage extends StatelessWidget {
  const RafflesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        RaffleItensCard(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyRafflesPage()));
            },
            title: "Meus sorteios",
            label: "Veja seus sorteios realizados ou em andamento."),
        const SizedBox(height: 30),
        RaffleItensCard(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RafflesListPage()));
            },
            title: "Participar de sorteios",
            label: "Encontre um sorteio e participe!"),
        const SizedBox(height: 30),
        RaffleItensCard(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RafflesHistoryPage()));
            },
            title: "Histórico de Sorteios",
            label: "Veja os sorteios que você participou e os seus resultado."),
      ],
    );
  }
}
