// https://www.codewars.com/kata/54d512e62a5e54c96200019e

String primeFactors(int n) {
  String result = "";
  double a = n.toDouble();
  for (int i = 2; i <= a; i++) {
    int b = 0;
    while (a % i == 0) {
      b += 1;
      a = a / i;
    }
    if (b == 1)
      result = result + "(" + i.toString() + ")";
    else if (b > 1)
      result = result + "(" + i.toString() + "**" + b.toString() + ")";
  }
  return result;
}
