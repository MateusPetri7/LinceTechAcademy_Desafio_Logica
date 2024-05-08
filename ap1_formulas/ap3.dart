import 'dart:io';
import 'dart:math';

class FormulaBhaskara {
  void calcularBhaskara() {
    print('Insira o coeficiente a:');
    final double a = double.parse(stdin.readLineSync()!);

    print('Insira o coeficiente b:');
    final double b = double.parse(stdin.readLineSync()!);

    print('Insira o coeficiente c:');
    final double c = double.parse(stdin.readLineSync()!);

    double delta = calcularDiscriminante(a, b, c);

    if (delta > 0) {
      double raiz1 = (-b + sqrt(delta)) / (2 * a);
      double raiz2 = (-b - sqrt(delta)) / (2 * a);
      print("As raízes são reais e diferentes:");
      print("Raiz 1: $raiz1");
      print("Raiz 2: $raiz2");
    } else if (delta == 0) {
      double raiz = -b / (2 * a);
      print("As raízes são reais e iguais:");
      print("Raiz: $raiz");
    } else {
      // Se o discriminante for negativo, as raízes são complexas
      double parteReal = -b / (2 * a);
      double parteImaginaria = sqrt(-delta) / (2 * a);
      print("As raízes são complexas:");
      print("Raiz 1: $parteReal + ${parteImaginaria}i");
      print("Raiz 2: $parteReal - ${parteImaginaria}i");
    }
  }

  double calcularDiscriminante(double a, double b, double c) {
    return b * b - 4 * a * c;
  }
}
