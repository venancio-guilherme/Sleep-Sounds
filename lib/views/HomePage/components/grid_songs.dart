import 'package:flutter/material.dart';
import 'package:venari_app/models/Musics/musics.dart';
import 'package:venari_app/models/constants/constants.dart';
import 'package:venari_app/views/HomePage/components/song_card.dart';

class GridSongs extends StatelessWidget {
  const GridSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: GridView.builder(
          itemCount: musics.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding),
          itemBuilder: (context, index) => SongCard(
              url: musics[index].url,
              description: musics[index].description,
              category: musics[index].category),
        ),
      ),
    );
  }
}
