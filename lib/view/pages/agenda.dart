import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Agendar extends StatefulWidget {
  @override
  _AgendarState createState() => _AgendarState();
}

class _AgendarState extends State<Agendar> {
  final Stream<QuerySnapshot> _cortesStream =
      FirebaseFirestore.instance.collection('cortes').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _cortesStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Erro ao carregar os dados'));
        }
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Center(child: Text('Sem dados disponíveis'));
        }
        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return CardWidget(
              tipoDeCorte: data['tipoDeCorte'],
              barbeiro: data['barbeiro'],
              dataEHora: data['dataEHora'],
            );
          }).toList(),
        );
      },
    );
  }
}

class CardWidget extends StatelessWidget {
  final String tipoDeCorte;
  final String barbeiro;
  final String dataEHora;

  CardWidget({
    required this.tipoDeCorte,
    required this.barbeiro,
    required this.dataEHora,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(tipoDeCorte),
        subtitle: Text('Barbeiro: $barbeiro\nData e Hora: $dataEHora'),
      ),
    );
  }
}
