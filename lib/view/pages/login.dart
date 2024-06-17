import 'package:corte_barbearia/view/pages/menuCortes.dart';
import 'package:corte_barbearia/view/widgets/myAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final senha = TextEditingController();
    return Scaffold(
        body: Stack(
      children: [
        Image(image: AssetImage("assets/TelaFundoCerta.png")),
        Column(children: [
          Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(children: [
                  Image(image: AssetImage("assets/Group 1.png")),
                  Text('Funcionários',
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontSize: 30)),
                ]),
              )),
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: email,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                  controller: senha,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'Senha',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 122, 122, 122)
                              .withOpacity(0.5),
                          blurRadius: 4,
                          offset: Offset(4, 8))
                    ]),
                width: 300,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      try {
                        final credential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                          email: email.text,
                          password: senha.text,
                        );
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Menu()));
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                    },
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'roboto'),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 122, 122, 122)
                              .withOpacity(0.5),
                          blurRadius: 4,
                          offset: Offset(4, 8))
                    ]),
                width: 300,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      try {
                        final credential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: email.text,
                          password: senha.text,
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: const Text(
                      'Cadastro',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'roboto'),
                    )),
              ),
            ),
          ]),
        ]),
      ],
    ));
  }
}
