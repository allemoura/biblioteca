import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/infra/repositories/raffle_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'add_raffle_page_store.g.dart';

class AddRafflePageStore = AddRafflePageBase with _$AddRafflePageStore;

abstract class AddRafflePageBase with Store {
  final RaffleModel _raffleModel = RaffleModel();

  @observable
  bool isLoading = true;

  @observable
  DateTime? selectedDate;

  @observable
  bool selectedRadio = false;

  @observable
  Book? book;

  @observable
  TextEditingController controllerCep = TextEditingController();

  void setSelectedDate(DateTime? value) => selectedDate = value;

  void setSelectedRadio(bool? value) => selectedRadio = value ?? false;

  void setBook(Book? value) => book = value;

  Future<void> saveRaffle(User user) async {
    Raffle raffle = Raffle(
        cep: controllerCep.text,
        toRaffle: selectedDate!,
        createdAt: DateTime.now(),
        book: book,
        toSend: selectedRadio,
        createdBy: user,
        participants: []);
    await _raffleModel.addNewRaffle(raffle);
  }
}
