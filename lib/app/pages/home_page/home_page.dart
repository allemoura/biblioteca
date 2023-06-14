import 'package:biblioteca/app/pages/home_page/widgets/home_drawer.dart';
import 'package:biblioteca/app/pages/home_page/home_page_store.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/app/widgets/dialogs/confirm_exchangeds.dart';
import 'package:biblioteca/app/widgets/raffle_view.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageStore store = HomePageStore();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const progressIndicator = SizedBox(
      height: 200,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
    return ScopedModelDescendant<UserModel>(builder: (context, child, model) {
      return Scaffold(
        drawer: HomeDrawer(model: model),
        body: Observer(builder: (context) {
          if (model.userData == null) {
            return progressIndicator;
          }
          if (store.isLoading) {
            store.init(model.userData?.id);
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CustomText(
                    value: "Sorteios",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              if (store.isLoading) progressIndicator,
              if (!store.isLoading)
                CarouselSlider(
                  options:
                      CarouselOptions(height: 270, enableInfiniteScroll: false),
                  items: store.activeRaffles.map((raffle) {
                    return Builder(
                      builder: (BuildContext context) => RaffleView(
                        raffle: raffle,
                        currentUser: model.userData!.toEntity(),
                        onSave: store.addNewParticipantRaffle,
                      ),
                    );
                  }).toList(),
                ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CustomText(
                    value: "Livros para troca",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              if (store.isLoading) progressIndicator,
              if (!store.isLoading)
                CarouselSlider(
                  options: CarouselOptions(
                      height: 200.0, enableInfiniteScroll: false),
                  items: store.books.map((exchanged) {
                    return Builder(
                      builder: (BuildContext context) {
                        return InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => ConfirmExchangeds(
                                      exchanged: exchanged,
                                      onConfirm: () {},
                                    ));
                          },
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: exchanged.bookSend.cover!,
                            width: 120,
                            height: 120,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
            ],
          );
        }),
      );
    });
  }
}
