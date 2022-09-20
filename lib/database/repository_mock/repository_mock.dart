import 'package:nutri_app/database/modules/alimento/alimento.dart';

// String nome;
// double kcal;
// double carboidratos;
// double proteinas;
// double gtotais;
// double gsaturadas;
// double gtrans;
// double fibra;
// double sodio;
// String caminhoImagem;

class RepositoryMock {
  List<Alimento> alimentos = [
    Alimento('Arroz Branco Cozido', 128.3, 28.1, 2.5, 2.4, 0.2, 0.2, 1.6, 1,
        'assets/images/arroz.jpg'),
    Alimento('Arroz Integral Cozido', 124, 25.8, 2.6, 1, 0.3, 0, 2.7, 1,
        'assets/images/arroz-integral.jpg'),
    Alimento('Banana Nanica', 92, 23.8, 1.4, 0.1, 0, 0, 1.9, 0,
        'assets/images/banana-nanica.png'),
    Alimento('Castanha de Caju', 570, 29.1, 18.5, 46.3, 0, 0, 0, 0,
        'assets/images/castanha-caju.png'),
    Alimento('Farelo de Aveia', 330, 51, 17, 7, 1, 0, 15, 0,
        'assets/images/farelo-aveia.jpg'),
    Alimento('Feijão Carioca Cozido', 155, 21.6, 5.5, 5.2, 1, 0, 5.5, 0,
        'assets/images/feijao.jpg'),
    Alimento('Feijão Preto Cozido', 77, 14, 4.5, 0.5, 0, 0, 8.4, 1.9,
        'assets/images/feijao-preto.png'),
    Alimento('Peito de Frango Grelhado', 159, 0, 32, 2.5, 0.9, 0, 0, 50,
        'assets/images/frango-grelhado.jpg'),
    Alimento('Leite Semi-Desnatado', 40.5, 4.7, 3.15, 1, 0.6, 0, 0, 143,
        'assets/images/leite.png'),
    Alimento('Macarrão Tipo Espaguete Cozido', 157, 30.68, 5.76, 0.92, 0.175, 0,
        1.8, 232, 'assets/images/espaguete.jpg'),
    Alimento('Pão de Forma 100% Integral', 202, 34, 9.4, 2.7, 0.6, 0, 4.5, 522,
        'assets/images/pao-forma-integral.jpg'),
    Alimento('Pasta de Amendoim Integral', 626.7, 9.3, 34.7, 52.7, 6.67, 0, 1.4,
        0, 'assets/images/pasta-amendoim.jpg'),
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

List<String> retornaNomes(List<Alimento> alimentos) {
  List<String> nomes = [];
  for (int i = 0; i < alimentos.length; i++) {
    nomes.insert(i, alimentos[i].nome);
  }
  return nomes;
}

Alimento regrade3(Alimento alimento, double gramas) {
  Alimento aux = Alimento('', 0, 0, 0, 0, 0, 0, 0, 0, '');
  aux.nome = alimento.nome;
  aux.kcal = (gramas * alimento.kcal) / 100;
  aux.carboidratos = (gramas * alimento.carboidratos) / 100;
  aux.proteinas = (gramas * alimento.proteinas) / 100;
  aux.gtotais = (gramas * alimento.gtotais) / 100;
  aux.gsaturadas = (gramas * alimento.gsaturadas) / 100;
  aux.gtrans = (gramas * alimento.gtrans) / 100;
  aux.fibra = (gramas * alimento.fibra) / 100;
  aux.sodio = (gramas * alimento.sodio) / 100;
  aux.caminhoImagem = alimento.caminhoImagem;
  return aux;
}
