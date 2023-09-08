import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venari_app/models/constants/constants.dart';

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  State<Categorias> createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List categorias = [
    'All',
    'Instrumental',
    'Ambiental',
    'Classics',
  ];
  List<IconData> icons = [
    Icons.apps,
    Icons.music_note,
    Icons.forest,
    Icons.nights_stay_outlined
  ];
  int idxSelecionado = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) {
            return buildCategory(index);
          },
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () => setState(() {
        idxSelecionado = index;
      }),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: idxSelecionado == index ? kIsSelected : kIsNotSelected,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icons[index],
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  categorias[index],
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
