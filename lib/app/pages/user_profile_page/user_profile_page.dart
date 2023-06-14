import 'package:biblioteca/app/pages/reset_page/reset_page.dart';
import 'package:biblioteca/app/widgets/custom_buttom.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _nameController.text = UserModel.of(context).userData!.name;
    _emailController.text = UserModel.of(context).userData!.email;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus Dados"),
      ),
      body: Form(
          key: _formKey,
          child:
              ListView(padding: const EdgeInsets.all(16.0), children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: "Nome",
              ),
              validator: (text) {
                if (text!.isEmpty) return "Nome inválido!";
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: "Seu E-mail",
              ),
              validator: (text) {
                if (text!.isEmpty) return "E-mail inválido!";
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            const SizedBox(height: 16.0),
            CustomButton(
              title: "Alterar Cadastro",
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  if (_emailController.text !=
                      UserModel.of(context).userData!.email) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResetPage(
                            novoEmail: _emailController.text,
                            novoNome: _nameController.text)));
                  } else {
                    UserModel.of(context).setUserName(_nameController.text);
                    UserModel.of(context).updateUserLocal();
                  }
                }
              },
            )
          ])),
    );
  }
}
