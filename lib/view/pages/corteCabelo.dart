import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:corte_barbearia/view/widgets/myAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CorteDeCabelo extends StatelessWidget {
  const CorteDeCabelo({super.key});

  @override
  Widget build(BuildContext context) {
    final corte = TextEditingController();
    final barbeiro = TextEditingController();
    final dh = TextEditingController();
    return Scaffold(
      appBar: MyAppBar(texto: "Corte De Cabelo"),
      body: ListView(
        children: [
          const Image(image: AssetImage('assets/Corte2_img.png')),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text("Corte de Cabelo",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Na barbearia de respeito, cortes de cabelo são obras de precisão e arte. A máquina e a tesoura esculpem contornos impecáveis. Dos curtos aos longos, há opções para todos os gostos, com cuidado e atenção profissionais.",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white))),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                    controller: corte,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Corte',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                    controller: barbeiro,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Barbeiro',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                    controller: dh,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Data e horário',
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
                            color: const Color.fromARGB(255, 122, 122, 122)
                                .withOpacity(0.5),
                            blurRadius: 4,
                            offset: const Offset(4, 8))
                      ]),
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () async {
                        final db = FirebaseFirestore.instance;
                        final cortes = <String, dynamic>{
                          "tipoDeCorte": corte.text,
                          "barbeiro": barbeiro.text,
                          "dEh": dh.text
                        };
                        try {
                          db.collection("informacoes").add(cortes);
                          cortes.clear();
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: const Text(
                        'Agendar',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'roboto'),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(
                    width: 80,
                    height: 100,
                    image: AssetImage('assets/Group 1.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Contatos",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
              SizedBox(),
              const Image(
                image: AssetImage('assets/whatsapp.png'),
                width: 200,
                height: 50,
              ),
              const Image(
                image: AssetImage('assets/instagram.png'),
                width: 200,
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
