// https://www.codewars.com/kata/565c0fa6e3a7d39dee000125

import 'dart:math' as m;

double dist(double v, double mu) {
  double vms = v / 3.6;
  return vms + vms * vms / (2 * mu * 9.81);
}

double speed(double d, double mu) {
  double qp(a, b, c) => (-b + m.sqrt(b * b - 4 * a * c)) / (2 * a);
  double rp = qp(1 / (2 * mu * 9.81), 1, -d);
  return rp * 3.6;
}
