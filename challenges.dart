
int oddCount(n) {
  List x = [];
  for (int i = 1; i < n; ++i) {
    if (i % 2 != 0) {
      x.add(i);
    }
    ;
  }
  ;
  return x.length;
}

///[Big Brain]
int oddCount2(n) {
  return n ~/ 2;
}

int positiveSum(List<int> arr) {
  int total = 0;

  arr.forEach((element) {
    if (element > 0) {
      total = total + element;
    }
  });

  return total;
}

void main(List<String> args) {
  int oddCount(n) {
    List x = [];
    for (int i = 1; i < n; ++i) {
      if (i % 2 != 0) {
        x.add(i);
      }
      ;
    }
    ;
    return x.length;
  }

  bool validParentheses(String braces) {
    var check = 0;
    for (var i = 0; i < braces.length; i++) {
      if (braces[i] == '(') check++;
      if (braces[i] == ')') check--;
      if (check < 0) return false;
    }

    return check == 0;
  }

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

  int sumOfIntervals(List<List<int>> intervals) {
    // your code here
    var uniqueArr = <int>[];
    intervals.forEach((element) {
      for (var i = element[0]; i < element[1]; i++) {
        uniqueArr.add(i);
      }
    });
    var xd = Set();

    xd.addAll(uniqueArr);
    return xd.length;
  }

  int rgb(int r, int g, int b) {
    r = (r < 0) ? -r : r;
    g = (g < 0) ? -g : g;
    b = (b < 0) ? -b : b;
    r = (r > 255) ? 255 : r;
    g = (g > 255) ? 255 : g;
    b = (b > 255) ? 255 : b;
    return int.parse(
        '${r.toRadixString(16)}${g.toRadixString(16)}${b.toRadixString(16)}');
  }

  String spinWords(String str) {
    final strList = str.split(" ");
    print(strList);

    for (var i = 0; i < strList.length; i++) {
      if (strList[i].length >= 5) {
        strList[i] = strList[i].split("").reversed.join("");
      }
    }
    return strList.join(" ");
  }

  String createPhoneNumber(List numbers) {
    return "(${numbers[0]}${numbers[1]}${numbers[2]}) ${numbers[3]}${numbers[4]}${numbers[5]}-${numbers[6]}${numbers[7]}${numbers[8]}${numbers[9]}";
  }

  int duplicateCount(String text) {
    final strL = text.split("").map((e) => e.toLowerCase()).toList();
    final uniqueL = strL.toSet().toList();
    for (var i in uniqueL) {
      strL.remove(i);
    }
    return strL.toSet().toList().length;
  }

  BigInt perimeter(int m) {
    var a = BigInt.zero;
    var b = BigInt.one;
    var c = BigInt.one;
    BigInt sum = BigInt.zero;
    for (var i = 0; i <= m; i++) {
      if (i == 1) {
        c = BigInt.one;
      } else {
        c = a + b;
      }
      a = b;
      b = c;
      sum += c;
    }

    return sum * BigInt.from(4);
  }

// Your new function as given to you by me, your boss.
int dblLinear(int n) {
  var list = <int>[];
  var x = 0;
  var y = 0;
  while(list.length<=n) {
    var a = 2*list[x] +1;
    var b = 3*list[y] +1;

    if(a>b) {
      list.add(b);
      y++;
    }
    else if(a<b) {
      list.add(a);
    }
    else {
      list.add(a);
      x++;
      y++;
    }
  }
  return list[n];
}
}
