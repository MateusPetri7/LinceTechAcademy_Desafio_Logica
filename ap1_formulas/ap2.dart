import 'dart:io';

class ConversorNumerico {
  void converterParaBinarioOctalHexadecimal() {
    print('Digite um número decimal:');
    final int numero = int.parse(stdin.readLineSync()!);

    String binario = converterParaBinario(numero);
    String octal = converterParaOctal(numero);
    String hexadecimal = converterParaHexadecimal(numero);

    print("Representação binária: $binario");
    print("Representação octal: $octal");
    print("Representação hexadecimal: $hexadecimal");
  }

  String converterParaBinario(int numero) => numero.toRadixString(2);

  String converterParaOctal(int numero) => numero.toRadixString(8);

  String converterParaHexadecimal(int numero) => numero.toRadixString(16);
}
