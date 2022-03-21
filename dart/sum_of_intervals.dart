// https://www.codewars.com/kata/52b7ed099cdc285c300001cd

  int sumOfIntervals(List<List<int>> intervals) {
    var sarr = <int>[];
    intervals.forEach((n) {
      for (var i = n[0]; i < n[1]; i++) {
        sarr.add(i);
      }
    });
    var s = Set();
    s.addAll(sarr);
    return s.length;
  }