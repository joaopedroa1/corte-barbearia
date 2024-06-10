import 'dart:js';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:corte_barbearia/view/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(texto: "Lista de Cortes"),
      body: content(),
    );
  }
  Widget content(){
    return CarouselSlider(
      items: [1, 2, 3, 4, 5].map((i) {
        return Container(
          width: MediaQuery.of(context as BuildContext).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Text(
              "text $i",
              style: const TextStyle(fontSize: 40),
            ),
          ),
        );
      }).toList(),
      options: CarouselOptions(
        height: 300,
      ),
    );
  }
}