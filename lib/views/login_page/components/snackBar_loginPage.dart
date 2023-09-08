import 'package:flutter/material.dart';

SnackBar SnackBarLogin() {
  return const SnackBar(
    content: Text('Usuário ou senha incorretos',
        style: TextStyle(fontWeight: FontWeight.bold)),
    backgroundColor: Color.fromARGB(249, 255, 157, 65),
    duration: Duration(milliseconds: 2000),
    showCloseIcon: true,
    closeIconColor: Colors.white,
  );
}
