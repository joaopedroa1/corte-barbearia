import 'package:corte_barbearia/view/pages/login.dart';
import 'package:corte_barbearia/view/pages/menuCortes.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends MaterialApp {
   MyApp({super.key}) : super(home: Menu(), debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark));
}
