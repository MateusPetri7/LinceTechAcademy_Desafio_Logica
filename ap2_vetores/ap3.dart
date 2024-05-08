import 'dart:io';
import 'dart:math';

class Vetores {
  void alimentarVetores() {
    print('Digite o tamanho dos vetores:');
    final int tamanho = int.parse(stdin.readLineSync()!);

    List<int> vet1 = preencherVetor(tamanho);
    List<int> vet2 = gerarNumerosAleatorios(tamanho);
    List<int> vet3 = somaVetores(vet1, vet2, tamanho);

    print('v1: ${vet1.join(', ')}');
    print('v2: ${vet2.join(', ')}');
    print('v3: ${vet3.join(', ')}');
  }

  List<int> preencherVetor(int tamanho) {
    List<int> vetor = [];

    for (int i = 0; i < tamanho; i++) {
      print('Informe o número da posição $i:');
      int numero = int.parse(stdin.readLineSync()!);
      vetor.add(numero);
    }
    return vetor;
  }

  List<int> gerarNumerosAleatorios(int tamanho) {
    final random = Random();
    List<int> vetorNumerosAleatorios = [];
    for (int i = 0; i < tamanho; i++) {
      vetorNumerosAleatorios.add(random.nextInt(100));
    }
    return vetorNumerosAleatorios;
  }

  List<int> somaVetores(List<int> vet1, List<int> vet2, int tamanho) {
    List<int> vetorSoma = [];
    for (int i = 0; i < tamanho; i++) {
      vetorSoma.add(vet1[i] + vet2[i]);
    }
    return vetorSoma;
  }
}
