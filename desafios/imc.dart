import 'dart:io';

void main(List<String> args) {
  /*
    IMC	CLASSIFICAÇÃO	OBESIDADE (GRAU)
    MENOR QUE 18,5	MAGREZA	0
    ENTRE 18,5 E 24,9	NORMAL	0
    ENTRE 25,0 E 29,9	SOBREPESO	I
    ENTRE 30,0 E 39,9	OBESIDADE	II
    MAIOR QUE 40,0	OBESIDADE GRAVE	III
  */

  print('Calcular IMC: \nInforme sua altura (exemplo: 1.65): ');
  var height = stdin.readLineSync();

  print('Informe seu peso (exemplo: 75.5): ');
  var weight = stdin.readLineSync();

  double imc = double.parse(weight.toString()) /
      (double.parse(height.toString()) * double.parse(height.toString()));

  print('\nSeu imc é de ' + imc.toStringAsPrecision(4));
  if (imc < 18.5) {
    print('\nSeu estado é: MAGREZA');
  } else if (imc >= 18.5 && imc <= 24.9) {
    print('\nSeu estado é: NORMAL');
  } else if (imc >= 25.0 && imc <= 29.9) {
    print('\nSeu estado é: SOBREPESO - Grau: I');
  } else if (imc >= 30.0 && imc <= 39.9) {
    print('\nSeu estado é: OBESIDADE - Grau: II');
  } else {
    print('\nSeu estado é: OBESIDADE GRAVE - Grau III');
  }
}
