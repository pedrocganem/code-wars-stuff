//https://www.codewars.com/kata/559a28007caad2ac4e000083
///[BIG HINT: FIBONACCI]
///
BigInt perimeter(int m) {
  var a = BigInt.zero;
  var b = BigInt.one;
  var c = BigInt.one;
  BigInt sum = BigInt.zero;
  for (var i = 0; i <= m; i++) {
    /// Im litteraly trash
    if (i == 1) {
      c = BigInt.one;
    }

    ///
    else {
      c = a + b;
    }
    a = b;
    b = c;
    sum += c;
  }

  return sum * BigInt.from(4);
}
