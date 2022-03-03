import 'package:flutter/material.dart';
import 'package:test_app/services/services.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key,}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              controller: emailTextController,
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              controller: emailTextController,
              obscureText: true,
              keyboardType: TextInputType.text,
            ),
            ElevatedButton(
              onPressed: login,
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  login(){
    AppServices.login(emailTextController.text, passwordTextController.text);
  }
}
