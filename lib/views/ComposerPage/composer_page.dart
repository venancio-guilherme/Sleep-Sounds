import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text('Composer Page'),
      ),
      body: Container(),
      bottomNavigationBar: HomePageBottomNavigationBar(),
    );
  }
}
