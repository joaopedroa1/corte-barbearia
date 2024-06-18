import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:corte_barbearia/view/widgets/card.dart';
import 'package:corte_barbearia/view/widgets/myAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(texto: "Lista de Cortes"),
      body: SingleChildScrollView(
        child: Padding(
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
                    child: card(150, 250,"Corte De Cabelo","assets/card_img1.png", 'A partir de: 50,00', context),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: card(150, 250,"Barba","assets/card_img2.png",'A partir de: 30,00', context),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: card(150, 250,"Corte + Barba","assets/card_img3.png",'A partir de: 75,00', context),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: card(150, 250,"Sobrancelha","assets/card_img4.png",'A partir de: 15,00', context),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: card(150, 250,"Luzes","assets/card_img5.png", 'A partir de: 50,00', context),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: card(150, 250,"Pigmentação","assets/card_img6.png",'A partir de: 25,00', context),
                  ),
                ]),
              ),
              const Image(width:80, height: 100, image: AssetImage('assets/Group 1.png')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Contatos", style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white))),
              ),
              SizedBox(),
              const Image(image: AssetImage('assets/whatsapp.png')),
              const Image(image: AssetImage('assets/instagram.png'))

            ],
          ),
        ),
      ),
    );
  }

  }
