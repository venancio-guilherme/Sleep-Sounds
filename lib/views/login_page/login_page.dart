import 'package:flutter/material.dart';
import 'package:venari_app/views/login_page/components/form_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final formKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF21283F),
        body: Center(
            child: FormLogin(
          formKey: formKey,
        )));
  }
}
