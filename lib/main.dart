import 'package:biblioteca/app/pages/initial_page.dart';
import 'package:biblioteca/app/pages/main_page/main_page.dart';
import 'package:biblioteca/infra/repositories/user_model.dart';
import 'package:biblioteca/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:scoped_model/scoped_model.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(builder: (context, child, model) {
        return MaterialApp(
          title: 'Biblioteca',
          theme: CustomThemes.lightTheme,
          home: model.isLoggedIn() ? const MainPage() : const InitialPage(),
        );
      }),
    );
  }
}
