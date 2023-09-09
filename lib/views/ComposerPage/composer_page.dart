import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venari_app/models/constants/constants.dart';
import 'package:venari_app/views/HomePage/components/bottom_navigation_bar.dart';

class ComposerPage extends StatefulWidget {
  const ComposerPage({super.key});

  @override
  State<ComposerPage> createState() => _ComposerPageState();
}

class _ComposerPageState extends State<ComposerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPageColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Composer Page',
          style: GoogleFonts.nunito(fontWeight: FontWeight.w900, fontSize: 25),
        ),
        elevation: 0,
        backgroundColor: kPageColor,
      ),
      body: Container(),
      bottomNavigationBar: HomePageBottomNavigationBar(),
    );
  }
}
