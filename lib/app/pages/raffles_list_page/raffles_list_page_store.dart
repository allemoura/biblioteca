import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/infra/repositories/raffle_model.dart';
import 'package:mobx/mobx.dart';

part 'raffles_list_page_store.g.dart';

class RafflesListPageStore = RafflesListPageBase with _$RafflesListPageStore;

abstract class RafflesListPageBase with Store {
  final RaffleModel _raffleModel = RaffleModel();

  @observable
  bool isLoading = true;

  @observable
  ObservableList<Raffle> raffles = ObservableList.of([]);

  Future<void> init() async {
    raffles = ObservableList.of(await _raffleModel.getAllRafflesActive());

    isLoading = false;
  }
}
