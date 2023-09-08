import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:venari_app/views/login_page/login_page.dart';
import 'package:venari_app/views/on_boarding_page/start_page_1.dart';
import 'package:venari_app/views/on_boarding_page/start_page_2.dart';
import 'package:venari_app/views/on_boarding_page/start_page_3.dart';
import '../../models/constants/constants.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var introductionScreen = IntroductionScreen(
      key: introKey,
      globalBackgroundColor: kPageColor,
      allowImplicitScrolling: true,
      autoScrollDuration: 3500,

      pages: [
        start_page_1(),
        start_page_2(),
        start_page_3(),
      ],

      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      showNextButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,

      // rtl: true,
      back: const Icon(Icons.arrow_back),
      skip: const Text('Pular',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: const Text(
        'Pronto!',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.only(bottom: 5),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),

      dotsDecorator: kDotsDecorator,

      dotsContainerDecorator: kShapeDecoration,
    );
    return introductionScreen;
  }
}
