import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../models/constants/constants.dart';

Widget _buildImage(String assetName, [double width = 350]) {
  return Image.asset(
    'assets/$assetName',
    width: width,
    scale: 0.9,
  );
}

PageViewModel start_page_3() {
  return PageViewModel(
    title: "Sons para crianças",
    body:
        'Famosos contos de fadas com sons suaves ajudarão seus filhos a adormecer mais rápido',
    image: _buildImage('img_tela_3.png'),
    decoration: pageDecoration,
  );
}
