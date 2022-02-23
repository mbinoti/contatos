import 'package:contatos/layers/entities/contatos.dart';

abstract class HomeRepository {
  Future<List<Contatos>> getList();
}
