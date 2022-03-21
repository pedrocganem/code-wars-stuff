// https://www.codewars.com/kata/5592e3bd57b64d00f3000047

import "dart:math" as math;

int findNb(int m) {
  for (int n = 0;; n++) {
    if (m > 0) {
      final curCubeVol = math.pow(n + 1, 3).toInt();
      m = m - curCubeVol;
    } else if (m == 0) {
      return n;
    } else if (m < 0) {
      return (-1);
    }
  }
}
