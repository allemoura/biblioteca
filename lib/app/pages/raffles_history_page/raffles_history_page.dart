import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RafflesHistoryPage extends StatelessWidget {
  const RafflesHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          value: "Histórico de sorteios",
          textColor: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
