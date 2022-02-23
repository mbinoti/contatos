import 'package:cloud_firestore/cloud_firestore.dart';

class Contatos {
  late String nome;
  late String sobrenome;
  late String telefone;
  late String email;
  late String dataNascimento;
  late String foto;
  Contatos(
    this.nome,
    this.sobrenome,
    this.telefone,
    this.email,
    this.dataNascimento,
    this.foto,
  );
  Map<String, dynamic> toMap() {
    return {
      "nome": nome,
      "sobrenome": sobrenome,
      "telefone": telefone,
      "email": email,
      "dataNascimento": dataNascimento,
      "foto": foto,
    };
  }

  Contatos.fromDocument(DocumentSnapshot document) {
    nome = document['nome'];
    sobrenome = document['sobrenome'];
    telefone = document['telefone'];
    email = document['email'];
    dataNascimento = document['dataNascimento'];
    foto = document['foto'];
  }
}
