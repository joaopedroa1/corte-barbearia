import 'package:corte_barbearia/view/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class CorteDeCabelo extends StatelessWidget {
  const CorteDeCabelo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(texto: "Corte De Cabelo"),
    );
  }
}