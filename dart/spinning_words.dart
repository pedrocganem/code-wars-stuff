//https://www.codewars.com/kata/5264d2b162488dc400000001

///[cool]

String spinWords(String str) {
  final strList = str.split(" ");
  for (var i = 0; i < strList.length; i++) {
    if (strList[i].length >= 5) {
      strList[i] = strList[i].split("").reversed.join("");
    }
  }
  return strList.join(" ");
}
