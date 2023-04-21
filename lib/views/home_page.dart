import 'package:flutter/material.dart';

import '../models/constants/colors.dart';
import '../models/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF21283F),
      appBar: AppBar(
        backgroundColor: Color(0XFF21283F),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('LOGIN PAGE'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/app_icon.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kCorCauda,
                  ),
                ),
                labelStyle: kLabelStyle,
                floatingLabelStyle: kFloatingLabelStyle,
                labelText: 'Login',
                suffixIcon: Icon(Icons.person),
                iconColor: Colors.white,
                suffixIconColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kCorCauda,
                    ),
                  ),
                  labelStyle: kLabelStyle,
                  labelText: 'Senha',
                  floatingLabelStyle: kFloatingLabelStyle,
                  suffixIcon: Icon(Icons.lock),
                  suffixIconColor: Colors.white,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Login'),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kCorCauda)),
          ),
        ],
      )),
    );
  }
}
