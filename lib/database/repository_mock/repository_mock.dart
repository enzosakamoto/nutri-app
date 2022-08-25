import 'package:nutri_app/database/alimento/alimento.dart';

class RepositoryMock {
  List<String> nomesAlimentos = ['Frango', 'Arroz', 'Feijão'];

  List<Alimento> alimentos = [
    Alimento(
        'Frango', 159, 0, 32, 2.4, 0.9, 0, 0, 52, 'assets/images/frango.jpeg'),
    Alimento(
        'Arroz', 159, 0, 32, 2.4, 0.9, 0, 0, 52, 'assets/images/arroz.jpg'),
    Alimento(
        'Feijão', 159, 0, 32, 2.4, 0.9, 0, 0, 52, 'assets/images/feijao.jpg'),
  ];

  RepositoryMock();
}

Alimento procuraAlimento(String nome) {
  Alimento error =
      Alimento('ERROR', 0, 0, 0, 0, 0, 0, 0, 0, 'assets/images/heitor.png');

  List<Alimento> lista = RepositoryMock().alimentos;

  for (int i = 0; i < lista.length; i++) {
    if (lista[i].nome == nome) {
      return lista[i];
    }
  }
  return error;
}
