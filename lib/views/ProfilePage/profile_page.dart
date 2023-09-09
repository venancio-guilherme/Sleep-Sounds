import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venari_app/models/constants/constants.dart';
import 'package:venari_app/views/HomePage/components/bottom_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPageColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Profile Page',
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
