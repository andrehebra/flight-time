import 'package:flutter/material.dart';

import '../components/main_app_bar.dart';

class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  static const routeName = '/LoginSignupPage';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: MainAppBar(title: "Login"),
        body: Center(
          child: Text("login signup screen here"),
        ),
      ),
    );
  }
}
