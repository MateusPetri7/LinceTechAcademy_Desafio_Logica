import 'dart:io';

class VetorValoresInformados {
  void alimentarVetor() {
    print('Digite o tamanho do vetor:');
    final int tamanho = int.parse(stdin.readLineSync()!);

    List<int> numeros = preencherVetor(tamanho);

    print('Números do vetor: ${numeros.join(', ')}');
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
}
