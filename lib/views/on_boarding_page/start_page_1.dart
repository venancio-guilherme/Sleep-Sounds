import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../models/constants/constants.dart';

Widget _buildImage(String assetName, [double width = 700]) {
  return Image.asset(
    'assets/$assetName',
    width: width,
    scale: 0.9,
  );
}

PageViewModel start_page_1() {
  return PageViewModel(
    title: "Música Exclusiva",
    body:
        "Temos uma biblioteca de sons autorais que você não encontrará em nenhum outro lugar",
    image: _buildImage('img_tela_1.png'),
    decoration: pageDecoration,
  );
}
