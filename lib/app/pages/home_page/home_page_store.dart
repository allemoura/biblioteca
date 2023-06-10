import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/domain/entities/user.dart';
import 'package:biblioteca/infra/repositories/raffle_model.dart';
import 'package:mobx/mobx.dart';

part 'home_page_store.g.dart';

class HomePageStore = HomePageBase with _$HomePageStore;

abstract class HomePageBase with Store {
  final RaffleModel _raffleModel = RaffleModel();

  @observable
  ObservableList<Raffle> activeRaffles = ObservableList.of([]);

  Future<void> init() async {
    activeRaffles = ObservableList.of(await _raffleModel.getAllRafflesActive());
  }

  addNewParticipantRaffle(Raffle raffle, User user) =>
      _raffleModel.addNewParticipant(raffle, user);
}
