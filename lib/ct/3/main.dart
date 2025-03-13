void main() {
  var strings1 = ['flower', 'flow', 'flight'];
  print(prefix(strings1));

  var strings2 = ['dog', 'racecar', 'car'];
  print(prefix(strings2));

  var strings3 = ['interspecies', 'interstellar', 'interstate'];
  print(prefix(strings3));
}

String prefix(List<String> strs) {
  if (strs.isEmpty) return '';
  if (strs.length == 1) return strs[0];

  strs.sort();

  String first = strs.first;
  String last = strs.last;

  int i = 0;

  while (i < first.length && i < last.length && first[i] == last[i]) {
    i++;
  }

  return first.substring(0, i);
}
