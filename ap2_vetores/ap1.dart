import 'dart:io';
import 'dart:math';

class VetorNumerosAleatorios {
  void numerosAleatorios() {
    print('Digite o tamanho do vetor:');
    final int tamanho = int.parse(stdin.readLineSync()!);

    List<int> numeros = gerarNumerosAleatorios(tamanho);

    print('Números gerados aleatoriamente: ${numeros.join(', ')}');
  }

  List<int> gerarNumerosAleatorios(int tamanho) {
    final random = Random();
    List<int> vetorNumerosAleatorios = [];
    for (int i = 0; i < tamanho; i++) {
      vetorNumerosAleatorios.add(random.nextInt(100));
    }
    return vetorNumerosAleatorios;
  }
}
