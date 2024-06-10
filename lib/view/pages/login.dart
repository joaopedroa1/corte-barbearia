import 'package:corte_barbearia/view/widgets/myAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        Stack(
      children: [
        Image(image: AssetImage("assets/TelaFundoCerta.png")),
        Column(
          children: [
            Container(
              width: double.infinity,
            child:
             Column(
              children: [
                Image(image: AssetImage("assets/Group 1.png")),
                Text('Funcionários', style: GoogleFonts.roboto(color: Colors.white, fontSize: 30)),
            ])),
            Column(children: [
              TextField(
                
              )
            ],)
          ]),
          ],
        )
    );
  }
}
