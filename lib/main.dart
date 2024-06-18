import 'package:corte_barbearia/view/pages/corteCabelo.dart';
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
   MyApp({super.key}) : super(home: CorteDeCabelo(), debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark));
}
