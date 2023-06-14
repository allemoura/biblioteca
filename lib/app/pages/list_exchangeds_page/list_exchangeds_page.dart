import 'package:biblioteca/app/pages/list_exchangeds_page/list_exchanged_page_store.dart';
import 'package:biblioteca/app/widgets/cards/exchanged_card.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ListExchangedsPage extends StatefulWidget {
  const ListExchangedsPage({super.key});

  @override
  State<ListExchangedsPage> createState() => _ListExchangedsPageState();
}

class _ListExchangedsPageState extends State<ListExchangedsPage> {
  final ListExchangedPageStore store = ListExchangedPageStore();

  @override
  void initState() {
    store.init(UserModel.of(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const CustomText(
            value: "Histórico de trocas",
            textColor: Colors.white,
          ),
        ),
        body: store.isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                children: store.exchangeds
                    .map(
                      (exchanged) => Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ExchangedCard(
                          exchanged: exchanged,
                          onAccepted: store.setAccepted,
                        ),
                      ),
                    )
                    .toList(),
              ),
      );
    });
  }
}
