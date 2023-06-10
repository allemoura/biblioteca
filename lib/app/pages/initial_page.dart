import 'package:biblioteca/app/pages/Register_page/Register_page.dart';
import 'package:biblioteca/app/pages/login_page/login_page.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final secundaryColor = Theme.of(context).colorScheme.secondary;
    const radius = Radius.circular(40);
    const fontSize = 30.0;
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/logo.png"),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: radius, topRight: radius),
                ),
                height: 336,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      title: "ENTRAR",
                      fontSize: fontSize,
                      width: 274,
                      height: 67,
                      radius: 30,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      title: "CADASTRAR",
                      width: 274,
                      height: 67,
                      radius: 30,
                      fontSize: fontSize,
                      backgroundColor: Colors.white,
                      textColor: secundaryColor,
                      borderColor: secundaryColor,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage())),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
