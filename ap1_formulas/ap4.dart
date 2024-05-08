import 'dart:io';
import 'ap1.dart';
import 'ap2.dart';
import 'ap3.dart';

void main() {
  bool sair = false;

  while (!sair) {
    print("\n### Menu ###");
    print("1. Calcular dimensão do maior lado de um triângulo retângulo");
    print("2. Converter número decimal para binário, octal e hexadecimal");
    print("3. Calcular as raízes fórmula de Bhaskara");
    print("4. Sair");

    print("Escolha uma opção: ");
    String escolha = stdin.readLineSync()!;
    print("");

    switch (escolha) {
      case "1":
        TrianguloRetangulo().calcularMaiorLado();
        break;
      case "2":
        ConversorNumerico().converterParaBinarioOctalHexadecimal();
        break;
      case "3":
        FormulaBhaskara().calcularBhaskara();
        break;
      case "4":
        sair = true;
        print("Saindo...");
        break;
      default:
        print("Opção inválida! Por favor, escolha uma opção válida.");
        break;
    }
  }
}
