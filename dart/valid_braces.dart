// https://www.codewars.com/kata/5277c8a221e209d3f6000b56

///[KINDA BIG BRAIN IMO]

bool validBraces(String inputString) {
  while (
    inputString.contains('()') || inputString.contains('[]') || inputString.contains('{}')) {
    inputString = inputString.replaceAll('()', "");
    inputString = inputString.replaceAll('[]', "");
    inputString = inputString.replaceAll('{}', "");
  }
  return inputString.isEmpty;
}