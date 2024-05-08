import 'dart:io';
import 'ap1.dart';
import 'ap2.dart';
import 'ap3.dart';

void main() {
  bool sair = false;

  while (!sair) {
    print("\n### Menu ###");
    print("1. Gerar vetor com números aleatórios de tamanho fixo");
    print("2. Gerar vetor com valores informados por você de tamanho fixo");
    print(
        "3. Gerar vetor informando valores, aleatório e soma dos vetores iniciais");
    print("4. Sair");

    print("Escolha uma opção: ");
    String escolha = stdin.readLineSync()!;
    print("");

    switch (escolha) {
      case "1":
        VetorNumerosAleatorios().numerosAleatorios();
        break;
      case "2":
        VetorValoresInformados().alimentarVetor();
        break;
      case "3":
        Vetores().alimentarVetores();
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
