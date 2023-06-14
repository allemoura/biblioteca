// ignore_for_file: must_be_immutable

import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ResetPage extends StatelessWidget {
  final String? novoEmail;
  final String? novoNome;

  ResetPage({super.key, required this.novoEmail, required this.novoNome});

  final _senhaController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  bool logado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text("Entrar"),
          centerTitle: true,
        ),
        body: ScopedModelDescendant<UserModel>(
          builder: (context, child, model) {
            if (model.isLoding) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Form(
                  key: _formKey,
                  child: ListView(
                      padding: const EdgeInsets.all(16.0),
                      children: <Widget>[
                        TextFormField(
                          controller: _senhaController,
                          decoration: const InputDecoration(
                            hintText: "Senha",
                          ),
                          obscureText: true,
                          validator: (text) {
                            if (text!.isEmpty || text.length < 8) {
                              return "Senha inválida!";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16.0),
                        SizedBox(
                          height: 44.0,
                          child: CustomButton(
                            title: "Confirmar",
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                model.signIn(
                                  email: model.userData!.name,
                                  pass: _senhaController.text,
                                );
                              }
                            },
                          ),
                        ),
                      ]));
            }
          },
        ));
  }
}
