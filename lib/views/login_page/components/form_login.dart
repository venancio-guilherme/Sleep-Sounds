import 'package:flutter/material.dart';
import 'package:venari_app/models/constants/colors.dart';
import 'package:venari_app/views/login_page/components/custom_text_field.dart';
import 'package:venari_app/views/login_page/components/snackBar_loginPage.dart';
import 'package:venari_app/views/login_page/login_page.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key, required this.formKey});
  final GlobalKey formKey;

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final controllePassword = TextEditingController();
    return Form(
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/app_icon.png'),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              label: 'Login',
              icone: Icons.person,
              controller: controller,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'O nome precisa ser preenchido';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              label: 'Password',
              icone: Icons.vpn_key,
              controller: controllePassword,
              isObscureText: true,
              validator: (pass) {
                if (pass == null || pass.isEmpty) {
                  return 'A senha precisa ser preenchida';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                String user = controller.value.text;
                String pass = controllePassword.value.text;
                bool isValidate = formKey.currentState!.validate();

                if (isValidate && user == 'admin' && pass == 'senha') {
                  Navigator.of(context).pushNamed('HomePage');
                } else if ((user.isNotEmpty && pass.isNotEmpty) &&
                    (user != 'admin' || pass.isNotEmpty != 'senha')) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBarLogin());
                }
              },
              child: Text('Login'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(kCorCauda)),
            ),
          ],
        ),
      ),
    );
  }
}
