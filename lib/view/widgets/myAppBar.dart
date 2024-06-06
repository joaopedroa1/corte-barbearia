import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  String texto;
  MyAppBar({required this.texto}) : super(title: Text(texto));
}