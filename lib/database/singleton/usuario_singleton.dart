// Singleton para armazenar dados no histórico

import 'package:nutri_app/database/modules/alimento/alimento.dart';

class UsuarioSingleton {
  final nome = 'Guest';
  final email = 'guest@email.com';
  final avatar = 'assets/images/guest.png';
  late List<Alimento> alimentos = [];
  late List<double> listaGramas = [];

  static final UsuarioSingleton _instance = UsuarioSingleton._internal();
  factory UsuarioSingleton() => _instance;
  UsuarioSingleton._internal();

  void adicionaALimento(Alimento alimento) {
    alimentos.add(alimento);
  }

  void adicionaGramas(double gramas) {
    listaGramas.add(gramas);
  }
}
