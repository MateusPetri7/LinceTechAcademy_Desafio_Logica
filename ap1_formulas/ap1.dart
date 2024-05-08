import 'dart:io';
import 'dart:math';

class TrianguloRetangulo {
  void calcularMaiorLado() {
    print('Digite o comprimento do primeiro cateto:');
    final double cateto1 = double.parse(stdin.readLineSync()!);

    print('Digite o comprimento do segundo cateto:');
    final double cateto2 = double.parse(stdin.readLineSync()!);

    final double hipotenusa = calcularHipotenusa(cateto1, cateto2);

    print("A dimensão do maior lado (hipotenusa) é: $hipotenusa");
  }

  double calcularHipotenusa(double cateto1, double cateto2) =>
      sqrt(cateto1 * cateto1 + cateto2 * cateto2);
}
