import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:validadores/Validador.dart';

part 'login_page_store.g.dart';

class LoginPageStore = LoginPageBase with _$LoginPageStore;

abstract class LoginPageBase with Store {
  final UserModel _registerUser = UserModel();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  String? emailValidator(String? email) {
    return Validador()
        .add(Validar.EMAIL, msg: 'E-mail Inválido')
        .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
        .minLength(8)
        .valido(email);
  }

  String? passwordValidator(String? password) {
    return Validador()
        .add(Validar.CPF, msg: 'CPF Inválido')
        .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
        .minLength(11)
        .maxLength(11)
        .valido(password, clearNoNumber: true);
  }

  Future<bool> signInWithEmail() async {
    return await _registerUser.signIn(
        email: emailController.text, pass: passwordController.text);
  }
}
