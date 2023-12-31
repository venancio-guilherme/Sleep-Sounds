import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venari_app/models/constants/constants.dart';
import 'package:venari_app/views/HomePage/components/bottom_navigation_bar.dart';
import 'package:venari_app/views/HomePage/components/categorias.dart';
import 'package:venari_app/views/HomePage/components/grid_songs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPageColor,
      appBar: AppBar(
        title: Text(
          'Sleep',
          style: styleTitlePage,
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kPageColor,
      ),
      body: Column(
        children: [
          Categorias(),
          SizedBox(
            height: 15,
          ),
          GridSongs(),
        ],
      ),
      bottomNavigationBar: HomePageBottomNavigationBar(),
    );
  }
}
