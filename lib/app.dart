import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/pages/login.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: const LoginPage(),
    );
  }
}