import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/exchanged.dart';
import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/infra/repositories/book_model.dart';
import 'package:biblioteca/infra/repositories/raffle_model.dart';
import 'package:mobx/mobx.dart';

part 'home_page_store.g.dart';

class HomePageStore = HomePageBase with _$HomePageStore;

abstract class HomePageBase with Store {
  final RaffleModel _raffleModel = RaffleModel();
  final BookModel _bookModel = BookModel();

  @observable
  ObservableList<Raffle> activeRaffles = ObservableList.of([]);

  @observable
  ObservableList<Exchanged> books = ObservableList.of([]);

  @observable
  bool isLoading = true;

  Future<void> init(String? userId) async {
    activeRaffles = ObservableList.of(await _raffleModel.getAllRafflesActive());
    books = ObservableList.of(await _bookModel.getExchangedsLimited(userId));
    isLoading = false;
  }

  addNewParticipantRaffle(Raffle raffle, User user) =>
      _raffleModel.addNewParticipant(raffle, user);
}
