import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RafflesListPage extends StatelessWidget {
  const RafflesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          value: "Sorteios",
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
