import 'package:nutri_app/database/alimento/alimento.dart';

class RepositoryMock {
  List<String> nomes_alimentos = ['Frango', 'Arroz', 'Feijão'];

  List<Alimento> alimentos = [
    Alimento('Frango', 159, 0, 32, 2.4, 0.9, 0, 0, 52),
  ];

  RepositoryMock();
}
