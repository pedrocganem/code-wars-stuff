
//https://www.codewars.com/kata/5672682212c8ecf83e000050
int dblLinear(int n) {
  var list = <int>[1];
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
      x++;
    }
    else {
      list.add(a);
      x++;
      y++;
    }
  }
  return list[n];
}