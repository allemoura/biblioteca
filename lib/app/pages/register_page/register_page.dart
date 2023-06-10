import 'package:biblioteca/app/pages/main_page/main_page.dart';
import 'package:biblioteca/app/pages/register_page/register_page_store.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/app/widgets/custom_text.dart';
import 'package:biblioteca/app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final RegisterPageStore store = RegisterPageStore();

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
                value: "Cadastro",
                fontWeight: FontWeight.bold,
                fontSize: 30,
                textColor: textColor,
              ),
            ),
            const SizedBox(height: 30),
            CustomTextFormField(
                labelText: "Nome",
                controller: store.nameController,
                validator: store.nameAndAddressValidator),
            space,
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
              title: "Cadastrar",
              radius: 30,
              width: 274,
              height: 67,
              fontSize: 30.0,
              onTap: () async {
                await store.registerWithEmail().then((value) {
                  if (value) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: CustomText(
                      value: "Usuario registrado com sucesso!",
                    )));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: CustomText(
                      value: "Erro ao registrar usuario, tente novamente!",
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
