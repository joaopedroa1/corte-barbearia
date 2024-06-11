import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:corte_barbearia/view/widgets/card.dart';
import 'package:corte_barbearia/view/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(texto: "Lista de Cortes"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: AnotherCarousel(
                images: const[
                AssetImage("carousel_img1.png"),
                AssetImage("carousel_img2.png"),
                AssetImage("carousel_img3.png"),
              ],
              dotSize: 6,
              indicatorBgPadding: 5.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: card(150, 250,"Corte + Barba"),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: card(150, 250,"Corte + Barba"),
                ),
              ]),
            )
            
          ],
        ),
      ),
    );
  }

  }
