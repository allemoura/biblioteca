import 'package:biblioteca/app/pages/main_page/main_page.dart';
import 'package:biblioteca/app/pages/login_page/login_page_store.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginPageStore store = LoginPageStore();

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(height: 20);
    final textColor = Theme.of(context).colorScheme.secondary;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Center(
              child: CustomText(
                value: "Bem-vindo de volta",
                fontWeight: FontWeight.bold,
                fontSize: 30,
                textColor: textColor,
              ),
            ),
            const SizedBox(height: 30),
            CustomTextFormField(
                labelText: "E-mail",
                controller: store.emailController,
                validator: store.emailValidator),
            space,
            CustomTextFormField(
                labelText: "Senha",
                obscureText: true,
                controller: store.passwordController,
                validator: store.passwordValidator),
            const SizedBox(height: 50),
            CustomButton(
              title: "Entrar",
              radius: 30,
              width: 274,
              height: 67,
              fontSize: 30.0,
              onTap: () async {
                await store.signInWithEmail().then((value) {
                  if (value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: CustomText(
                      value: "Erro ao logar, tente novamente!",
                    )));
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
