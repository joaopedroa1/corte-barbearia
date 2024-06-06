import 'package:corte_barbearia/view/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(image: AssetImage("assets/TelaFundoCerta.png")),
        Column(
          children: [Image(image: AssetImage("assets/Group 1.png")),
           
          ],
        )
      ],
    ));
  }
}
