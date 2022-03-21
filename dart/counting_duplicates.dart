//https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1
int duplicateCount(String text) {
  final strL = text.split("").map((e) => e.toLowerCase()).toList();
  final uniqueL = strL.toSet().toList();
  for (var i in uniqueL) {
    strL.remove(i);
  }
  return strL.toSet().toList().length;
}
