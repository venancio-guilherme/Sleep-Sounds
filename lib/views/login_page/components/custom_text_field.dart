import 'package:flutter/material.dart';

import 'package:venari_app/models/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final bool? isObscureText;
  final String label;
  final IconData icone;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const CustomTextField({
    Key? key,
    this.isObscureText,
    required this.label,
    required this.icone,
    required this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: isObscureText ?? false,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: kCorCauda,
            ),
          ),
          labelStyle: kLabelStyle,
          floatingLabelStyle: kFloatingLabelStyle,
          labelText: label,
          icon: Icon(icone),
          iconColor: kCorCauda,
        ),
      ),
    );
  }
}
