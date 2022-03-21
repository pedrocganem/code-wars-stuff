// https://www.codewars.com/kata/52774a314c2333f0a7000688

bool validParentheses(String b) {
  var check = 0;
  for (var i = 0; i < b.length; i++) {
    if (b[i] == '(') check++;
    if (b[i] == ')') check--;
    if (check < 0) return false;
  }

  return check == 0;
}

