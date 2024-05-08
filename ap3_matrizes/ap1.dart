import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o número de linhas da matriz: ");
  final int linhas = int.parse(stdin.readLineSync()!);

  print("Digite o número de colunas da matriz: ");
  final int colunas = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = gerarMatrizAleatoria(linhas, colunas);

  print("Matriz aleatória gerada:");
  imprimirMatriz(matriz);
}

List<List<int>> gerarMatrizAleatoria(int linhas, int colunas) {
  Random random = Random();
  List<List<int>> matriz = [];

  for (int i = 0; i < linhas; i++) {
    List<int> linha = [];
    for (int j = 0; j < colunas; j++) {
      linha.add(random.nextInt(100));
    }
    matriz.add(linha);
  }

  return matriz;
}

void imprimirMatriz(List<List<int>> matriz) {
  for (List<int> linha in matriz) {
    print(linha);
  }
}
