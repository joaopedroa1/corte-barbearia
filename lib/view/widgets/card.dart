import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget card(
    double largura, double altura, String texto,) {
  return Container(
    margin: const EdgeInsets.fromLTRB(4, 4, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(texto, style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black)),),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset("card_img1.png", width: 175, height: 175),
          ),
        ],
      ),
    ),
  );
}