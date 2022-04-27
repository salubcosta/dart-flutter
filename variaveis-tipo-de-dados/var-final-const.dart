import 'dart:io';

void main(List<String> args) {
  print('Escreva o nome do curso: ');
  var course = stdin.readLineSync();

  print('O nome do curso é $course');
}
