bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

void main() {
  String numero = '123';
  String naoEnumero = 'xxx';

  bool teste1 = isNumeric(numero);
  bool teste2 = isNumeric(naoEnumero);

  print(teste1);
  print(teste2);
}
