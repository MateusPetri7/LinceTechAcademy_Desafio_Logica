import 'dart:io';

void main() {
  print("Digite o número de linhas da matriz: ");
  final int linhas = int.parse(stdin.readLineSync()!);

  print("Digite o número de colunas da matriz: ");
  final int colunas = int.parse(stdin.readLineSync()!);

  List<List<double>> matriz = preencherMatriz(linhas, colunas);

  print("Digite um número real para multiplicar a matriz: ");
  final double multiplicador = double.parse(stdin.readLineSync()!);

  List<List<double>> matrizMultiplicada =
      multiplicarMatriz(matriz, multiplicador);

  print("Matriz informada:");
  imprimirMatriz(matriz);

  print("Matriz multiplicada:");
  imprimirMatriz(matrizMultiplicada);
}

List<List<double>> preencherMatriz(int linhas, int colunas) {
  List<List<double>> matriz = [];

  for (int i = 0; i < linhas; i++) {
    List<double> linha = [];
    for (int j = 0; j < colunas; j++) {
      print("Informe o valor da posição linha[$i] coluna[$j]");
      final double numero = double.parse(stdin.readLineSync()!);
      linha.add(numero);
    }
    matriz.add(linha);
  }

  return matriz;
}

void imprimirMatriz(List<List<double>> matriz) {
  for (List<double> linha in matriz) {
    print(linha);
  }
}

List<List<double>> multiplicarMatriz(
    List<List<double>> matriz, double multiplicador) {
  List<List<double>> matrizMultiplicada = [];

  for (List<double> linha in matriz) {
    List<double> linhaMultiplicada =
        linha.map((e) => e * multiplicador).toList();
    matrizMultiplicada.add(linhaMultiplicada);
  }

  return matrizMultiplicada;
}
