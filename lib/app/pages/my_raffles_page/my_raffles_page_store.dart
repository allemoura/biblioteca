import 'package:biblioteca/domain/entities/raffle.dart';
import 'package:biblioteca/infra/repositories/raffle_model.dart';
import 'package:mobx/mobx.dart';

part 'my_raffles_page_store.g.dart';

class MyRafflesPageStore = MyRafflesPageBase with _$MyRafflesPageStore;

abstract class MyRafflesPageBase with Store {
  final RaffleModel _raffleModel = RaffleModel();

  @observable
  bool isLoading = true;

  @observable
  ObservableList<Raffle> raffles = ObservableList.of([]);

  Future<void> init(String userId) async {
    raffles =
        ObservableList.of(await _raffleModel.getAllRafflesFilterByUser(userId));

    isLoading = false;
  }
}
