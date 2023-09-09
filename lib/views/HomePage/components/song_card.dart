import 'package:flutter/material.dart';
import 'package:venari_app/models/constants/constants.dart';

class SongCard extends StatelessWidget {
  const SongCard(
      {super.key,
      required this.url,
      required this.description,
      required this.category});
  final String url;
  final String description;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 4.0),
                      child: Container(
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(125, 0, 0, 0)),
                        child: IconButton(
                          iconSize: 25,
                          padding: EdgeInsets.zero,
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(Icons.play_arrow_sharp),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Text(
          description,
          style: descriptionTextStyle,
          textAlign: TextAlign.justify,
        ),
        Text(
          category,
          style: kCategoryTextStyle,
        ),
      ],
    );
  }
}

// Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: Container(
//                         width: 30,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Color.fromARGB(99, 0, 0, 0)),
//                         child: IconButton(
//                           iconSize: 25,
//                           padding: EdgeInsets.zero,
//                           color: Colors.white,
//                           onPressed: () {},
//                           icon: Icon(Icons.play_arrow_sharp),
//                         ),
//                       ),
//                     )