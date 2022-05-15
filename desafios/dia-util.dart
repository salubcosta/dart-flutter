void main(List<String> args) {
  DateTime data = DateTime(2022, 05, 01); //DateTime.now();

  bool diaUtil = (!ehFinalDeSemana(data) && !ehFeriado(data));

  if (diaUtil) {
    print('Hoje é dia útil!');
  } else {
    print('Hoje não é dia útil');
  }
}

bool ehFinalDeSemana(DateTime data) {
  return (data.weekday == 6 || data.weekday == 7);
}

bool ehFeriado(DateTime data) {
  /**
   * Feriados nacionais e pontos facultativos 2022
   * 1º de janeiro (sábado): Dia da Confraternização Universal (feriado)
   * 28 de fevereiro (segunda-feira): Carnaval (ponto facultativo) 
   * 1º de março (terça-feira): Carnaval (ponto facultativo) *
   * 2 de março (quarta-feira): Quarta-feira de Cinzas (ponto facultativo até as 14h) 
   * 15 de abril (sexta-feira): Sexta-feira Santa (feriado)
   * 21 de abril (quinta-feira): Tiradentes (feriado) 
   * 1º de maio (domingo): Dia do Trabalho (feriado)
   * 16 de junho (quinta-feira): Corpus Christi (ponto facultativo)
   * 7 de setembro (quarta-feira): Dia da Independência do Brasil (feriado)
   * 12 de outubro (quarta-feira): Dia de Nossa Senhora Aparecida (feriado)
   * 28 de outubro (sexta-feira): Dia do Servidor Público (ponto facultativo)
   * 2 de novembro (quarta-feira): Dia de Finados (feriado)
   * 15 de novembro (terça-feira): Proclamação da República (feriado) 
   * 25 de dezembro (domingo): Natal (feriado)
   */
  var diasDeFeriado = [
    DateTime(2022, 01, 01),
    DateTime(2022, 02, 28),
    DateTime(2022, 03, 01),
    DateTime(2022, 03, 02),
    DateTime(2022, 04, 15),
    DateTime(2022, 04, 21),
    DateTime(2022, 05, 01),
    DateTime(2022, 06, 16),
    DateTime(2022, 09, 07),
    DateTime(2022, 10, 12),
    DateTime(2022, 10, 28),
    DateTime(2022, 11, 02),
    DateTime(2022, 11, 15),
    DateTime(2022, 12, 25),
  ];

  return diasDeFeriado.contains(data);
}
