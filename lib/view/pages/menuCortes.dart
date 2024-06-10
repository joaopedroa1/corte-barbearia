import 'package:corte_barbearia/view/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(texto: "Lista de Cortes"),
    );
  }
}