import 'dart:io';

void main() {
  print("Digite o número de linhas da matriz: ");
  final int linhas = int.parse(stdin.readLineSync()!);

  print("Digite o número de colunas da matriz: ");
  final int colunas = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = preencherMatriz(linhas, colunas);

  print("Matriz informada:");
  imprimirMatriz(matriz);
}

List<List<int>> preencherMatriz(int linhas, int colunas) {
  List<List<int>> matriz = [];

  for (int i = 0; i < linhas; i++) {
    List<int> linha = [];
    for (int j = 0; j < colunas; j++) {
      print("Informe o valor da posição linha[$i] coluna[$j]");
      final int numero = int.parse(stdin.readLineSync()!);
      linha.add(numero);
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
