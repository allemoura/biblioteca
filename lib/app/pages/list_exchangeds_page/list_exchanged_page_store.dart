import 'package:biblioteca/domain/entities/exchanged.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:biblioteca/infra/repositories/book_model.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:mobx/mobx.dart';

part 'list_exchanged_page_store.g.dart';

class ListExchangedPageStore = ListExchangedPageBase
    with _$ListExchangedPageStore;

abstract class ListExchangedPageBase with Store {
  @observable
  bool isLoading = true;

  @observable
  ObservableList<Exchanged> exchangeds = ObservableList.of([]);

  @observable
  UserModel? userModel;

  Future<void> init(UserModel model) async {
    userModel = model;
    await getExchangeds();
  }

  Future<void> getExchangeds() async {
    isLoading = true;
    exchangeds = ObservableList.of(
        await BookModel().getMyExchangeds(userModel!.userData!.id));
    isLoading = false;
  }

  Future<void> setAccepted(Exchanged exchanged, bool accepted) async {
    await BookModel().setExchangedAccepted(exchanged, accepted);
    await userModel!.addNewBookExchanged(exchanged.bookExchanged!);
    await userModel!.addNewBookExchangedToOtherUser(
        exchanged.bookSend, UserData.fromEntity(exchanged.userSend));
    await getExchangeds();
  }
}
