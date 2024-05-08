import 'dart:io';

void main() {
  print('Digite o número de linhas da primeira matriz: ');
  int linhas1 = int.parse(stdin.readLineSync()!);

  print('Digite o número de colunas da primeira matriz: ');
  int colunas1 = int.parse(stdin.readLineSync()!);

  print('Digite o número de linhas da segunda matriz: ');
  int linhas2 = int.parse(stdin.readLineSync()!);

  print('Digite o número de colunas da segunda matriz: ');
  int colunas2 = int.parse(stdin.readLineSync()!);

  if (colunas1 != linhas2) {
    print('As dimensões das matrizes não são compatíveis para multiplicação.');
    return;
  }

  List<List<int>> matriz1 = preencherMatriz(linhas1, colunas1, 'primeira');
  List<List<int>> matriz2 = preencherMatriz(linhas2, colunas2, 'segunda');

  print('\nMatriz 1:');
  imprimirMatriz(matriz1);

  print('\nMatriz 2:');
  imprimirMatriz(matriz2);

  List<List<int>> matrizProduto = multiplicarMatrizes(matriz1, matriz2);

  print('\nMatriz Produto:');
  imprimirMatriz(matrizProduto);
}

List<List<int>> preencherMatriz(int linhas, int colunas, String ordemMatriz) {
  List<List<int>> matriz = [];

  for (int i = 0; i < linhas; i++) {
    List<int> linha = [];
    for (int j = 0; j < colunas; j++) {
      print(
          "Informe o valor da posição linha[$i] coluna[$j] da $ordemMatriz matriz");
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

List<List<int>> multiplicarMatrizes(
    List<List<int>> matriz1, List<List<int>> matriz2) {
  final linhasMatriz1 = matriz1.length;
  final colunasMatriz1 = matriz1[0].length;
  final colunasMatriz2 = matriz2[0].length;

  final matrizProduto =
      List.generate(linhasMatriz1, (_) => List.filled(colunasMatriz2, 0));

  for (var i = 0; i < linhasMatriz1; i++) {
    for (var j = 0; j < colunasMatriz2; j++) {
      for (var k = 0; k < colunasMatriz1; k++) {
        matrizProduto[i][j] += matriz1[i][k] * matriz2[k][j];
      }
    }
  }

  return matrizProduto;
}
