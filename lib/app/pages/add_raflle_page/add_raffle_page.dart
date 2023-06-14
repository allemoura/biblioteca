import 'package:biblioteca/app/pages/add_raflle_page/add_raffle_page_store.dart';
import 'package:biblioteca/app/pages/search_page/search_page.dart';
import 'package:biblioteca/app/utils/extensions/datetime_extension.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/app/widgets/custom_text_form_field.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AddRafflesPage extends StatefulWidget {
  const AddRafflesPage({super.key});

  @override
  State<AddRafflesPage> createState() => _AddRafflesPageState();
}

class _AddRafflesPageState extends State<AddRafflesPage> {
  final AddRafflePageStore store = AddRafflePageStore();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Adicionar sorteio",
          ),
        ),
        body: Center(
          child: Column(children: [
            const SizedBox(height: 10),
            CustomTextFormField(
                controller: store.controllerCep,
                labelText: "Seu Cep",
                validator: (v) {
                  return v;
                }),
            Row(
              children: [
                Checkbox(
                    value: store.selectedRadio,
                    onChanged: store.setSelectedRadio),
                const CustomText(value: "Você vai arcar com a entrega")
              ],
            ),
            ElevatedButton(
              onPressed: () async {
                final book = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchPage(
                              filterBook: true,
                            )));
                if (book != null) {
                  store.setBook(book);
                }
              },
              child: Text(
                store.book == null ? 'Selecionar Livro' : store.book!.title,
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  initialDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 200)),
                );

                if (date != null) {
                  store.setSelectedDate(date);
                }
              },
              child: Text(
                store.selectedDate == null
                    ? 'Selecionar Data'
                    : store.selectedDate!.customToString(),
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              title: "Salvar",
              onTap: () async {
                if (store.controllerCep.text.isEmpty ||
                    store.selectedDate == null ||
                    store.book == null) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                    "Ops, preencha todos os campos",
                  )));
                } else {
                  await store
                      .saveRaffle(UserModel.of(context).userData!.toEntity())
                      .then((value) {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  });
                }
              },
            )
          ]),
        ),
      );
    });
  }
}
