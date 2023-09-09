import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

const kTitleTextStyle = TextStyle(
  fontFamily: 'Nunito',
  fontSize: 42.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);

const kBodyTextStyle = TextStyle(
  fontFamily: 'Nunito',
  fontStyle: FontStyle.italic,
  fontSize: 19.0,
  color: Color.fromARGB(255, 188, 196, 204),
);

const pageDecoration = PageDecoration(
  titleTextStyle: kTitleTextStyle,
  bodyTextStyle: kBodyTextStyle,
  bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
  pageColor: kPageColor,
  imagePadding: EdgeInsets.zero,
);

const kShapeDecoration = const ShapeDecoration(
  color: Colors.transparent,
  shape: CircleBorder(),
);

const kDotsDecorator = const DotsDecorator(
    size: Size(12.0, 10.0),
    color: Color.fromARGB(255, 136, 135, 135),
    activeColor: Colors.white,
    activeSize: Size(22.0, 10.0),
    activeShape: CircleBorder());

const kLabelStyle = TextStyle(
  fontFamily: 'Nunito',
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const kFloatingLabelStyle = TextStyle(
    color: Color.fromARGB(249, 255, 157, 65),
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w300);
const kDefaultPadding = 20.0;

const kPageColor = Color(0XFF141927);

const kCorCauda = Color.fromARGB(249, 255, 157, 65);

const kIsSelected = Color(0XFF4870FF);
const kIsNotSelected = Color(0XFF21283F);

const kCategoryTextStyle = TextStyle(
  fontFamily: 'Nunito',
  fontSize: 15.0,
  color: Color.fromARGB(255, 188, 196, 204),
);

var descriptionTextStyle = GoogleFonts.nunito(
    fontWeight: FontWeight.w900, fontSize: 20, color: Colors.white);

TextStyle styleTitlePage =
    GoogleFonts.nunito(fontWeight: FontWeight.w900, fontSize: 28);
