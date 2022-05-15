void main(List<String> args) {
  var data = DateTime.now();

  switch (data.weekday) {
    case 1:
      print('Segunda-feira');
      break;
    case 2:
      print('Terça-feira');
      break;
    case 3:
      print('Quarta-feira');
      break;
    case 4:
      print('Quinta-feira');
      break;
    case 5:
      print('Sexta-feira');
      break;
    case 6:
      print('Sábado');
      break;
    case 7:
      print('Domingo');
      break;
  }
}
