import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddContatos extends StatelessWidget {
  late String nome;
  late String sobrenome;
  late String telefone;
  AddContatos({
    Key? key,
    required this.nome,
    required this.sobrenome,
    required this.telefone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference contatos =
        FirebaseFirestore.instance.collection('contatos');
    Future<void> addContatos() {
      return contatos
          .add({'nome': nome, 'sobrenome': sobrenome, 'telefone': telefone})
          .then((value) => print('Contto added'))
          .catchError((error) => print('as'));
    }

    return TextButton(
      onPressed: addContatos,
      child: const Text('add contatos'),
    );
  }
}
