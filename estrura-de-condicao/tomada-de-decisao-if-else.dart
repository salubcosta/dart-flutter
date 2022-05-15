void main(List<String> args) {
  const nota = 9.5;
  const media = 7;

  if (nota >= media) {
    print('Aprovado!');
  } else if (nota < media && nota >= 5) {
    print('Em recuperação...');
  } else {
    print('Reprovado! =/');
  }
}
