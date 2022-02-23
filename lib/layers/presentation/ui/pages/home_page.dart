import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CollectionReference contatos =
        FirebaseFirestore.instance.collection('contatos');

    Future<void> addContatos(
        {required String nome,
        required String sobrenome,
        required String telefone}) async {
      contatos
          .add({'nome': nome, 'sobrenome': sobrenome, 'telefone': telefone})
          .then((value) => print('Contto added'))
          .catchError((error) => print('as'));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'asas',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addContatos(nome: 'aa', sobrenome: 'assaas', telefone: 'ss');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
