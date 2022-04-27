void main(List<String> args) {
  int incremento = 1;
  incremento++;

  print(incremento); // 2
  print(incremento++); // 2
  print(incremento); // 3
  print(++incremento); // 4

  print(incremento); // 4
  print(incremento--); // 4
  print(incremento); // 3
  print(--incremento); // 2
}
