bool isNumeric(String s) {
  return double.tryParse(s) != null;
}

void main() {
  String numero = '123';
  String naoEnumero = 'xxx';

  bool teste1 = isNumeric(numero);
  bool teste2 = isNumeric(naoEnumero);

  // ignore: avoid_print
  print(teste1);
  // ignore: avoid_print
  print(teste2);
}
