import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class MyRafflesPage extends StatelessWidget {
  const MyRafflesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: const [],
      ),
    );
  }
}
