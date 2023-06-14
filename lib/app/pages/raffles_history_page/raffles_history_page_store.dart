import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/infra/repositories/raffle_model.dart';
import 'package:mobx/mobx.dart';

part 'raffles_history_page_store.g.dart';

class RafflesHistoryPageStore = RafflesHistoryPageBase
    with _$RafflesHistoryPageStore;

abstract class RafflesHistoryPageBase with Store {
  final RaffleModel _raffleModel = RaffleModel();

  @observable
  bool isLoading = true;

  @observable
  ObservableList<Raffle> raffles = ObservableList.of([]);

  Future<void> init(String userId) async {
    raffles = ObservableList.of(
        await _raffleModel.getAllRafflesFilterByParticipants(userId));

    isLoading = false;
  }
}
