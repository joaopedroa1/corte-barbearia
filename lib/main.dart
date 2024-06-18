import 'package:corte_barbearia/view/pages/login.dart';
import 'package:corte_barbearia/view/pages/menuCortes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
  }

class MyApp extends MaterialApp {
   MyApp({super.key}) : super(home: Menu(), debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark));
}
