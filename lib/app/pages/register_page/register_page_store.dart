import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:validadores/Validador.dart';

part 'register_page_store.g.dart';

class RegisterPageStore = RegisterPageBase with _$RegisterPageStore;

abstract class RegisterPageBase with Store {
  final UserModel _registerUser = UserModel();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  TextEditingController nameController = TextEditingController();

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

  String? nameAndAddressValidator(String? value) {
    return Validador()
        .add(Validar.OBRIGATORIO, msg: 'Campo obrigatório')
        .minLength(5)
        .valido(value);
  }

  Future<bool> registerWithEmail() async {
    return await _registerUser.signUp(
        name: nameController.text,
        pass: passwordController.text,
        email: emailController.text);
  }

  Future<bool> registerWithGoogle() async {
    return await _registerUser.signInWithGoogle();
  }
}
