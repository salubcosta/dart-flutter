void main() {
  int coin = 10;

  print(coin.runtimeType); // int
  print(coin.toString().runtimeType); // String
  print(coin.toDouble().runtimeType); // double
  print(int.parse('10').runtimeType); // int
  print(double.parse('10.5').runtimeType); // double

  print(10.toString().runtimeType);
}
