import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Container(),
      bottomNavigationBar: HomePageBottomNavigationBar(),
    );
  }
}
