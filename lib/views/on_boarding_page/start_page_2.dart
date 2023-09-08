import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../models/constants/constants.dart';

Widget _buildImage(String assetName, [double width = 350.0]) {
  return Image.asset(
    'assets/$assetName',
    width: width,
    scale: 0.9,
  );
}

PageViewModel start_page_2() {
  return PageViewModel(
    title: "Relaxe com sons para dormir",
    body: "Nossos sons irão te ajudar a relaxar e melhorar a saúde do teu sono",
    image: _buildImage('img_tela_2.png'),
    decoration: pageDecoration,
  );
}
